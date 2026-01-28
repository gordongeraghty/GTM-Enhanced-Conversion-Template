/**
 * Unit tests for Event Deduplication
 * Tests DataLayerManager deduplication logic
 */

describe('Event Deduplication Module', function() {

  // Mock DataLayerManager with deduplication
  const DataLayerManager = {
    _recentEvents: [],
    _dedupeWindow: 10000, // 10 seconds

    _getEventFingerprint: function(data) {
      const email = data.email || '';
      const time = Math.floor(Date.now() / this._dedupeWindow);
      return email + '_' + time;
    },

    _isDuplicate: function(data) {
      const fingerprint = this._getEventFingerprint(data);

      if (this._recentEvents.indexOf(fingerprint) !== -1) {
        return true;
      }

      this._recentEvents.push(fingerprint);

      // Limit cache size
      if (this._recentEvents.length > 50) {
        this._recentEvents.shift();
      }

      return false;
    },

    push: function(data) {
      if (!data) {
        return false;
      }

      if (this._isDuplicate(data)) {
        return false; // Duplicate, skip
      }

      // Would push to dataLayer here
      return true;
    },

    // Helper for testing
    _reset: function() {
      this._recentEvents = [];
    }
  };

  describe('Basic Deduplication', function() {

    beforeEach(function() {
      DataLayerManager._reset();
    });

    it('should allow first submission', function() {
      const data = {email: 'test@example.com'};
      expect(DataLayerManager.push(data)).toBe(true);
    });

    it('should block duplicate submission within time window', function() {
      const data = {email: 'test@example.com'};

      // First submission
      expect(DataLayerManager.push(data)).toBe(true);

      // Duplicate submission
      expect(DataLayerManager.push(data)).toBe(false);
    });

    it('should allow different emails simultaneously', function() {
      const data1 = {email: 'test1@example.com'};
      const data2 = {email: 'test2@example.com'};

      expect(DataLayerManager.push(data1)).toBe(true);
      expect(DataLayerManager.push(data2)).toBe(true);
    });

    it('should allow same email after time window', function(done) {
      // Create custom manager with shorter window for testing
      const testManager = Object.create(DataLayerManager);
      testManager._dedupeWindow = 100; // 100ms
      testManager._recentEvents = [];

      const data = {email: 'test@example.com'};

      // First submission
      expect(testManager.push(data)).toBe(true);

      // Wait for time window to pass
      setTimeout(function() {
        // Should allow after window
        expect(testManager.push(data)).toBe(true);
        done();
      }, 150);
    });

    it('should reject null data', function() {
      expect(DataLayerManager.push(null)).toBe(false);
      expect(DataLayerManager.push(undefined)).toBe(false);
    });

  });

  describe('Cache Management', function() {

    beforeEach(function() {
      DataLayerManager._reset();
    });

    it('should limit cache size to 50 entries', function() {
      // Push 60 unique emails
      for (let i = 0; i < 60; i++) {
        DataLayerManager.push({email: 'test' + i + '@example.com'});
      }

      expect(DataLayerManager._recentEvents.length).toBe(50);
    });

    it('should remove oldest entries when cache is full', function() {
      // Push 51 unique emails
      for (let i = 0; i < 51; i++) {
        DataLayerManager.push({email: 'test' + i + '@example.com'});
      }

      // First email should be removed
      const firstFingerprint = DataLayerManager._getEventFingerprint({email: 'test0@example.com'});
      expect(DataLayerManager._recentEvents.indexOf(firstFingerprint)).toBe(-1);

      // Last email should still be there
      const lastFingerprint = DataLayerManager._getEventFingerprint({email: 'test50@example.com'});
      expect(DataLayerManager._recentEvents.indexOf(lastFingerprint)).toBeGreaterThan(-1);
    });

  });

  describe('Fingerprint Generation', function() {

    beforeEach(function() {
      DataLayerManager._reset();
    });

    it('should generate consistent fingerprints for same email within time window', function() {
      const data1 = {email: 'test@example.com'};
      const data2 = {email: 'test@example.com'};

      const fp1 = DataLayerManager._getEventFingerprint(data1);
      const fp2 = DataLayerManager._getEventFingerprint(data2);

      expect(fp1).toBe(fp2);
    });

    it('should generate different fingerprints for different emails', function() {
      const data1 = {email: 'test1@example.com'};
      const data2 = {email: 'test2@example.com'};

      const fp1 = DataLayerManager._getEventFingerprint(data1);
      const fp2 = DataLayerManager._getEventFingerprint(data2);

      expect(fp1).not.toBe(fp2);
    });

    it('should handle missing email gracefully', function() {
      const data = {};
      const fingerprint = DataLayerManager._getEventFingerprint(data);

      expect(fingerprint).toContain('_'); // Should still generate fingerprint
    });

  });

});
