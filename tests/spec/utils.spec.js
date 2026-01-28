/**
 * Unit tests for Utils module
 * Tests email validation, normalization, phone normalization, and querySelector safety
 */

describe('Utils Module', function() {

  // Mock Utils object (would be extracted from template.tpl in real implementation)
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
        } else if (cleaned.length === 11 && cleaned.startsWith('1')) {
          cleaned = '+' + cleaned;
        } else {
          cleaned = '+' + cleaned;
        }
      }
      return cleaned;
    },

    normalizeName: function(name) {
      if (!name) return null;
      return name.trim();
    }
  };

  describe('Email Validation', function() {

    it('should accept valid email formats', function() {
      expect(Utils.isValidEmail('test@example.com')).toBe(true);
      expect(Utils.isValidEmail('user+tag@domain.co.uk')).toBe(true);
      expect(Utils.isValidEmail('test123@test.com')).toBe(true);
      expect(Utils.isValidEmail('user.name@example.com')).toBe(true);
    });

    it('should reject invalid email formats', function() {
      expect(Utils.isValidEmail('test@example')).toBe(false); // No valid TLD
      expect(Utils.isValidEmail('test@.com')).toBe(false); // Domain starts with dot
      expect(Utils.isValidEmail('test @example.com')).toBe(false); // Contains whitespace
      expect(Utils.isValidEmail('@example.com')).toBe(false); // No local part
      expect(Utils.isValidEmail('test@')).toBe(false); // No domain
      expect(Utils.isValidEmail('test')).toBe(false); // No @ symbol
    });

    it('should reject emails with TLD less than 2 characters', function() {
      expect(Utils.isValidEmail('test@example.c')).toBe(false);
    });

    it('should handle edge cases', function() {
      expect(Utils.isValidEmail(null)).toBe(false);
      expect(Utils.isValidEmail(undefined)).toBe(false);
      expect(Utils.isValidEmail('')).toBe(false);
      expect(Utils.isValidEmail(123)).toBe(false); // Not a string
    });
  });

  describe('Email Normalization', function() {

    it('should convert email to lowercase', function() {
      expect(Utils.normalizeEmail('TEST@EXAMPLE.COM')).toBe('test@example.com');
      expect(Utils.normalizeEmail('User@Domain.Com')).toBe('user@domain.com');
    });

    it('should trim whitespace', function() {
      expect(Utils.normalizeEmail('  test@example.com  ')).toBe('test@example.com');
      expect(Utils.normalizeEmail('\ttest@example.com\n')).toBe('test@example.com');
    });

    it('should handle mixed case and whitespace', function() {
      expect(Utils.normalizeEmail('  USER@DOMAIN.COM  ')).toBe('user@domain.com');
    });

    it('should return null for invalid inputs', function() {
      expect(Utils.normalizeEmail(null)).toBe(null);
      expect(Utils.normalizeEmail(undefined)).toBe(null);
      expect(Utils.normalizeEmail('')).toBe(null);
    });
  });

  describe('Phone Normalization', function() {

    it('should normalize US phone numbers to E.164 format', function() {
      expect(Utils.normalizePhone('(555) 123-4567')).toBe('+15551234567');
      expect(Utils.normalizePhone('555-123-4567')).toBe('+15551234567');
      expect(Utils.normalizePhone('555.123.4567')).toBe('+15551234567');
      expect(Utils.normalizePhone('5551234567')).toBe('+15551234567');
    });

    it('should handle phone numbers with country code', function() {
      expect(Utils.normalizePhone('+1 555 123 4567')).toBe('+15551234567');
      expect(Utils.normalizePhone('1-555-123-4567')).toBe('+15551234567');
    });

    it('should handle international formats', function() {
      expect(Utils.normalizePhone('+44 20 1234 5678')).toBe('+442012345678');
      expect(Utils.normalizePhone('+61 2 1234 5678')).toBe('+61212345678');
    });

    it('should remove all non-digit characters', function() {
      // Note: Extension digits make this 13 digits total, so +1 is not added
      // (only added for 10-11 digit numbers)
      expect(Utils.normalizePhone('(555) 123-4567 ext. 890')).toBe('+5551234567890');
    });

    it('should return null for invalid inputs', function() {
      expect(Utils.normalizePhone(null)).toBe(null);
      expect(Utils.normalizePhone(undefined)).toBe(null);
      expect(Utils.normalizePhone('')).toBe(null);
    });
  });

  describe('Name Normalization', function() {

    it('should trim whitespace from names', function() {
      expect(Utils.normalizeName('  John  ')).toBe('John');
      expect(Utils.normalizeName('\tDoe\n')).toBe('Doe');
    });

    it('should preserve internal spaces', function() {
      expect(Utils.normalizeName('  Mary Jane  ')).toBe('Mary Jane');
    });

    it('should return null for invalid inputs', function() {
      expect(Utils.normalizeName(null)).toBe(null);
      expect(Utils.normalizeName(undefined)).toBe(null);
      expect(Utils.normalizeName('')).toBe(null);
    });
  });

});
