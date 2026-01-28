/**
 * Unit tests for Data Validation
 * Tests processData function validation and normalization logic
 */

describe('Data Validation Module', function() {

  // Mock CONFIG object
  const CONFIG = {
    enableValidation: true,
    normalizeData: true
  };

  // Mock Utils object
  const Utils = {
    _emailRegex: /^[^\s@]+@[a-zA-Z0-9][^\s@]*\.[a-zA-Z]{2,}$/,
    _phoneDigitsRegex: /\D/g,

    isValidEmail: function(email) {
      if (!email || typeof email !== 'string') return false;
      // Trim and lowercase before validation for better UX
      return this._emailRegex.test(email.trim().toLowerCase());
    },

    normalizeEmail: function(email) {
      if (!email) return null;
      return email.toLowerCase().trim();
    },

    normalizePhone: function(phone) {
      if (!phone) return null;
      let cleaned = phone.replace(this._phoneDigitsRegex, '');
      if (cleaned.length >= 10 && !cleaned.startsWith('+')) {
        if (cleaned.length === 10) {
          cleaned = '+1' + cleaned;
        }
      }
      return cleaned;
    },

    normalizeName: function(name) {
      if (!name) return null;
      return name.trim();
    }
  };

  // Mock DataCollector.processData
  function processData(data) {
    // Check email exists and is not empty/whitespace
    if (!data.email || typeof data.email !== 'string' || data.email.trim() === '') {
      return null;
    }

    // Validate email
    if (CONFIG.enableValidation && !Utils.isValidEmail(data.email)) {
      return null;
    }

    // Normalize data
    if (CONFIG.normalizeData) {
      data.email = Utils.normalizeEmail(data.email);

      // Additional check after normalization
      if (!data.email || data.email.trim() === '') {
        return null;
      }

      if (data.phone) {
        data.phone = Utils.normalizePhone(data.phone);
      }
      if (data.firstName) {
        data.firstName = Utils.normalizeName(data.firstName);
      }
      if (data.lastName) {
        data.lastName = Utils.normalizeName(data.lastName);
      }
    }

    // Build final object
    const result = {
      email: data.email
    };

    if (data.phone) result.phone_number = data.phone;
    if (data.firstName) result.first_name = data.firstName;
    if (data.lastName) result.last_name = data.lastName;
    if (data.address) result.address = data.address;

    return result;
  }

  describe('processData Validation', function() {

    it('should reject missing email', function() {
      expect(processData({})).toBe(null);
      expect(processData({phone: '5551234567'})).toBe(null);
    });

    it('should reject empty string email', function() {
      expect(processData({email: ''})).toBe(null);
    });

    it('should reject whitespace-only email', function() {
      expect(processData({email: '   '})).toBe(null);
      expect(processData({email: '\t\n'})).toBe(null);
    });

    it('should reject non-string email', function() {
      expect(processData({email: 123})).toBe(null);
      expect(processData({email: null})).toBe(null);
      expect(processData({email: undefined})).toBe(null);
    });

    it('should reject invalid email formats', function() {
      expect(processData({email: 'test@example'})).toBe(null); // No valid TLD
      expect(processData({email: 'invalid'})).toBe(null);
      expect(processData({email: '@example.com'})).toBe(null);
    });

    it('should accept valid email', function() {
      const result = processData({email: 'test@example.com'});
      expect(result).not.toBe(null);
      expect(result.email).toBe('test@example.com');
    });

    it('should normalize email to lowercase', function() {
      const result = processData({email: 'TEST@EXAMPLE.COM'});
      expect(result).not.toBe(null);
      expect(result.email).toBe('test@example.com');
    });

    it('should trim whitespace from email', function() {
      const result = processData({email: '  test@example.com  '});
      expect(result).not.toBe(null);
      expect(result.email).toBe('test@example.com');
    });

    it('should include optional fields when provided', function() {
      const result = processData({
        email: 'test@example.com',
        phone: '5551234567',
        firstName: 'John',
        lastName: 'Doe'
      });

      expect(result).not.toBe(null);
      expect(result.email).toBe('test@example.com');
      expect(result.phone_number).toBe('+15551234567');
      expect(result.first_name).toBe('John');
      expect(result.last_name).toBe('Doe');
    });

    it('should normalize phone numbers', function() {
      const result = processData({
        email: 'test@example.com',
        phone: '(555) 123-4567'
      });

      expect(result).not.toBe(null);
      expect(result.phone_number).toBe('+15551234567');
    });

    it('should trim name fields', function() {
      const result = processData({
        email: 'test@example.com',
        firstName: '  John  ',
        lastName: '  Doe  '
      });

      expect(result).not.toBe(null);
      expect(result.first_name).toBe('John');
      expect(result.last_name).toBe('Doe');
    });

  });

});
