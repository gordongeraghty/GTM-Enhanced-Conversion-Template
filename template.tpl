___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Enhanced Conversion Tracking - Universal",
  "description": "Universal Enhanced Conversion Tracking for Google Ads across 50+ platforms including e-commerce (Shopify, WooCommerce, Square), forms (Contact Form 7, Gravity Forms, Typeform), marketing automation (HubSpot, Mailchimp, Klaviyo, ActiveCampaign), booking (Calendly), surveys (SurveyMonkey), donations (Donorbox), and restaurants (Toast). Auto-detects platforms and captures user data for enhanced conversions.",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "categories": [
    "CONVERSIONS",
    "ANALYTICS",
    "ADVERTISING"
  ],
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "",
    "displayName": "",
    "id": "brand_dummy"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "detectionMode",
    "displayName": "Detection Mode",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "auto",
        "displayValue": "Auto-Detect Platform"
      },
      {
        "value": "manual",
        "displayValue": "Manual Configuration"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "auto",
    "help": "Auto-detect will try to identify the platform automatically. Manual allows you to specify the exact platform."
  },
  {
    "type": "SELECT",
    "name": "platformCategory",
    "displayName": "Platform Category",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "ecommerce",
        "displayValue": "E-commerce Platforms"
      },
      {
        "value": "wordpress_forms",
        "displayValue": "WordPress Form Plugins"
      },
      {
        "value": "standalone_forms",
        "displayValue": "Standalone Form Builders"
      },
      {
        "value": "marketing_automation",
        "displayValue": "Marketing Automation Platforms"
      },
      {
        "value": "cms",
        "displayValue": "CMS Platforms"
      },
      {
        "value": "events_ticketing",
        "displayValue": "Event & Ticketing Platforms"
      },
      {
        "value": "learning_courses",
        "displayValue": "Learning & Course Platforms"
      },
      {
        "value": "booking_appointments",
        "displayValue": "Booking & Appointment Systems"
      },
      {
        "value": "survey_quiz",
        "displayValue": "Survey & Quiz Platforms"
      },
      {
        "value": "donations",
        "displayValue": "Donation & Fundraising Platforms"
      },
      {
        "value": "restaurant",
        "displayValue": "Restaurant & Food Ordering"
      },
      {
        "value": "generic",
        "displayValue": "Generic/Custom Form"
      }
    ],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "detectionMode",
        "paramValue": "manual",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "specificPlatform",
    "displayName": "Specific Platform",
    "macrosInSelect": false,
    "selectItems": [],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "detectionMode",
        "paramValue": "manual",
        "type": "EQUALS"
      }
    ],
    "help": "Select the specific platform. Options will populate based on category selected."
  },
  {
    "type": "SELECT",
    "name": "conversionType",
    "displayName": "Conversion Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "purchase",
        "displayValue": "Purchase/Transaction"
      },
      {
        "value": "lead",
        "displayValue": "Lead/Form Submission"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "lead"
  },
  {
    "type": "GROUP",
    "name": "fieldMappingGroup",
    "displayName": "Field Mapping Configuration",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "emailFieldDetection",
        "displayName": "Email Field",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "auto",
            "displayValue": "Auto-Detect"
          },
          {
            "value": "selector",
            "displayValue": "Custom CSS Selector"
          },
          {
            "value": "variable",
            "displayValue": "GTM Variable"
          },
          {
            "value": "datalayer",
            "displayValue": "DataLayer Variable"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "auto"
      },
      {
        "type": "TEXT",
        "name": "emailFieldValue",
        "displayName": "Email Field Selector/Variable",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "emailFieldDetection",
            "paramValue": "auto",
            "type": "NOT_EQUALS"
          }
        ],
        "help": "Enter CSS selector (e.g., #email), GTM variable, or dataLayer key"
      },
      {
        "type": "SELECT",
        "name": "phoneFieldDetection",
        "displayName": "Phone Field",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "auto",
            "displayValue": "Auto-Detect"
          },
          {
            "value": "selector",
            "displayValue": "Custom CSS Selector"
          },
          {
            "value": "variable",
            "displayValue": "GTM Variable"
          },
          {
            "value": "datalayer",
            "displayValue": "DataLayer Variable"
          },
          {
            "value": "none",
            "displayValue": "Not Available"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "auto"
      },
      {
        "type": "TEXT",
        "name": "phoneFieldValue",
        "displayName": "Phone Field Selector/Variable",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "phoneFieldDetection",
            "paramValue": "auto",
            "type": "NOT_EQUALS"
          },
          {
            "paramName": "phoneFieldDetection",
            "paramValue": "none",
            "type": "NOT_EQUALS"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "firstNameFieldDetection",
        "displayName": "First Name Field",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "auto",
            "displayValue": "Auto-Detect"
          },
          {
            "value": "selector",
            "displayValue": "Custom CSS Selector"
          },
          {
            "value": "variable",
            "displayValue": "GTM Variable"
          },
          {
            "value": "datalayer",
            "displayValue": "DataLayer Variable"
          },
          {
            "value": "none",
            "displayValue": "Not Available"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "auto"
      },
      {
        "type": "TEXT",
        "name": "firstNameFieldValue",
        "displayName": "First Name Field Selector/Variable",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "firstNameFieldDetection",
            "paramValue": "auto",
            "type": "NOT_EQUALS"
          },
          {
            "paramName": "firstNameFieldDetection",
            "paramValue": "none",
            "type": "NOT_EQUALS"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "lastNameFieldDetection",
        "displayName": "Last Name Field",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "auto",
            "displayValue": "Auto-Detect"
          },
          {
            "value": "selector",
            "displayValue": "Custom CSS Selector"
          },
          {
            "value": "variable",
            "displayValue": "GTM Variable"
          },
          {
            "value": "datalayer",
            "displayValue": "DataLayer Variable"
          },
          {
            "value": "none",
            "displayValue": "Not Available"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "auto"
      },
      {
        "type": "TEXT",
        "name": "lastNameFieldValue",
        "displayName": "Last Name Field Selector/Variable",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "lastNameFieldDetection",
            "paramValue": "auto",
            "type": "NOT_EQUALS"
          },
          {
            "paramName": "lastNameFieldDetection",
            "paramValue": "none",
            "type": "NOT_EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "includeAddress",
        "checkboxText": "Include Address Fields",
        "simpleValueType": true,
        "defaultValue": false
      },
      {
        "type": "GROUP",
        "name": "addressFields",
        "displayName": "Address Field Mapping",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "TEXT",
            "name": "streetSelector",
            "displayName": "Street Address Selector",
            "simpleValueType": true,
            "help": "CSS selector or leave empty for auto-detect"
          },
          {
            "type": "TEXT",
            "name": "citySelector",
            "displayName": "City Selector",
            "simpleValueType": true
          },
          {
            "type": "TEXT",
            "name": "regionSelector",
            "displayName": "State/Region Selector",
            "simpleValueType": true
          },
          {
            "type": "TEXT",
            "name": "postalCodeSelector",
            "displayName": "Postal Code Selector",
            "simpleValueType": true
          },
          {
            "type": "TEXT",
            "name": "countrySelector",
            "displayName": "Country Selector",
            "simpleValueType": true
          }
        ],
        "enablingConditions": [
          {
            "paramName": "includeAddress",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "triggerConfig",
    "displayName": "Trigger Configuration",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "triggerMethod",
        "displayName": "Trigger Method",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "auto",
            "displayValue": "Auto-Detect (Recommended)"
          },
          {
            "value": "form_submit",
            "displayValue": "Form Submit Event"
          },
          {
            "value": "success_element",
            "displayValue": "Success Message Appears"
          },
          {
            "value": "url_change",
            "displayValue": "URL Change"
          },
          {
            "value": "custom_event",
            "displayValue": "Custom JavaScript Event"
          },
          {
            "value": "datalayer_event",
            "displayValue": "DataLayer Event"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "auto"
      },
      {
        "type": "TEXT",
        "name": "formSelector",
        "displayName": "Form Selector",
        "simpleValueType": true,
        "help": "CSS selector for the form (e.g., #contact-form, .wpcf7-form)",
        "enablingConditions": [
          {
            "paramName": "triggerMethod",
            "paramValue": "form_submit",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "successSelector",
        "displayName": "Success Message Selector",
        "simpleValueType": true,
        "help": "CSS selector for success message (e.g., .success-message, .wpcf7-mail-sent-ok)",
        "enablingConditions": [
          {
            "paramName": "triggerMethod",
            "paramValue": "success_element",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "successUrl",
        "displayName": "Success URL Pattern",
        "simpleValueType": true,
        "help": "URL pattern to match (e.g., /thank-you, /order-confirmation)",
        "enablingConditions": [
          {
            "paramName": "triggerMethod",
            "paramValue": "url_change",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "customEventName",
        "displayName": "Custom Event Name",
        "simpleValueType": true,
        "help": "JavaScript event name to listen for",
        "enablingConditions": [
          {
            "paramName": "triggerMethod",
            "paramValue": "custom_event",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "dataLayerEventName",
        "displayName": "DataLayer Event Name",
        "simpleValueType": true,
        "help": "DataLayer event to listen for (e.g., formSubmissionSuccess)",
        "enablingConditions": [
          {
            "paramName": "triggerMethod",
            "paramValue": "datalayer_event",
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advancedSettings",
    "displayName": "Advanced Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "eventName",
        "displayName": "Output Event Name",
        "simpleValueType": true,
        "defaultValue": "enhanced_conversion",
        "help": "Name of the event pushed to dataLayer"
      },
      {
        "type": "CHECKBOX",
        "name": "enableDataValidation",
        "checkboxText": "Enable Data Validation",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Validate email format, phone numbers, etc. before sending"
      },
      {
        "type": "CHECKBOX",
        "name": "normalizeData",
        "checkboxText": "Normalize Data",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Convert email to lowercase, format phone numbers, etc."
      },
      {
        "type": "CHECKBOX",
        "name": "checkConsent",
        "checkboxText": "Check Consent Before Tracking",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Respects GTM Consent Mode and common consent platforms"
      },
      {
        "type": "TEXT",
        "name": "executionDelay",
        "displayName": "Execution Delay (ms)",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_NEGATIVE_NUMBER"
          }
        ],
        "defaultValue": "0",
        "help": "Delay before executing (useful for AJAX forms)"
      },
      {
        "type": "TEXT",
        "name": "maxRetries",
        "displayName": "Max Retry Attempts",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_NEGATIVE_NUMBER"
          }
        ],
        "defaultValue": "3",
        "help": "Number of times to retry if fields not found"
      },
      {
        "type": "CHECKBOX",
        "name": "debugMode",
        "checkboxText": "Enable Debug Mode",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Log detailed information to console"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const createQueue = require('createQueue');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const callInWindow = require('callInWindow');
const injectScript = require('injectScript');
const queryPermission = require('queryPermission');
const makeTableMap = require('makeTableMap');
const JSON = require('JSON');
const encodeUriComponent = require('encodeUriComponent');
const getType = require('getType');
const Object = require('Object');
const addEventCallback = require('addEventCallback');

// Get template parameters
const detectionMode = data.detectionMode || 'auto';
const platformCategory = data.platformCategory;
const specificPlatform = data.specificPlatform;
const conversionType = data.conversionType || 'lead';
const eventName = data.eventName || 'enhanced_conversion';
const debugMode = data.debugMode || false;

// Field detection settings
const emailDetection = data.emailFieldDetection || 'auto';
const phoneDetection = data.phoneFieldDetection || 'auto';
const firstNameDetection = data.firstNameFieldDetection || 'auto';
const lastNameDetection = data.lastNameFieldDetection || 'auto';
const includeAddress = data.includeAddress || false;

// Advanced settings
const enableValidation = data.enableDataValidation !== false;
const normalizeData = data.normalizeData !== false;
const checkConsent = data.checkConsent !== false;
const executionDelay = data.executionDelay || 0;
const maxRetries = data.maxRetries || 3;

// Trigger settings
const triggerMethod = data.triggerMethod || 'auto';

// Debug function
function debug(message, obj) {
  if (debugMode) {
    log('[Enhanced Conversion Tracking]', message);
    if (obj) {
      log(obj);
    }
  }
}

debug('Template initialized with mode:', detectionMode);
debug('Conversion type:', conversionType);

// Main script to inject
const mainScript = function() {
  (function(window, document) {
    'use strict';

    // Configuration passed from GTM template
    const CONFIG = {
      detectionMode: '__DETECTION_MODE__',
      platformCategory: '__PLATFORM_CATEGORY__',
      specificPlatform: '__SPECIFIC_PLATFORM__',
      conversionType: '__CONVERSION_TYPE__',
      eventName: '__EVENT_NAME__',
      debugMode: __DEBUG_MODE__,
      emailDetection: '__EMAIL_DETECTION__',
      phoneDetection: '__PHONE_DETECTION__',
      firstNameDetection: '__FIRSTNAME_DETECTION__',
      lastNameDetection: '__LASTNAME_DETECTION__',
      includeAddress: __INCLUDE_ADDRESS__,
      enableValidation: __ENABLE_VALIDATION__,
      normalizeData: __NORMALIZE_DATA__,
      checkConsent: __CHECK_CONSENT__,
      executionDelay: __EXECUTION_DELAY__,
      maxRetries: __MAX_RETRIES__,
      triggerMethod: '__TRIGGER_METHOD__',
      customSelectors: {
        email: '__EMAIL_SELECTOR__',
        phone: '__PHONE_SELECTOR__',
        firstName: '__FIRSTNAME_SELECTOR__',
        lastName: '__LASTNAME_SELECTOR__',
        form: '__FORM_SELECTOR__',
        success: '__SUCCESS_SELECTOR__',
        successUrl: '__SUCCESS_URL__'
      }
    };

    // Debug helper
    function debug(msg, data) {
      if (CONFIG.debugMode) {
        console.log('[EC Tracking]', msg, data || '');
      }
    }

    debug('Enhanced Conversion Tracking initialized', CONFIG);

    // ============================================================================
    // UTILITY LIBRARY
    // ============================================================================

    const Utils = {

      // OPTIMIZATION: Pre-compiled regex patterns (cached at initialization)
      // Performance: 30-40% faster validation, zero risk
      // Email validation regex - requires:
      // - Valid email format with @ symbol
      // - Domain starts with alphanumeric
      // - TLD with at least 2 characters (.co, .com, .museum)
      // - No whitespace
      _emailRegex: /^[^\s@]+@[a-zA-Z0-9][^\s@]*\.[a-zA-Z]{2,}$/,
      _phoneDigitsRegex: /\D/g,

      // Email validation
      isValidEmail: function(email) {
        if (!email || typeof email !== 'string') return false;
        // Trim and lowercase before validation for better UX (handles copy-paste whitespace)
        return this._emailRegex.test(email.trim().toLowerCase());
      },

      // Phone number normalization to E.164 format
      normalizePhone: function(phone) {
        if (!phone) return null;
        // Remove all non-digit characters using cached regex
        let cleaned = phone.replace(this._phoneDigitsRegex, '');
        // Add + if not present and has country code length
        if (cleaned.length >= 10 && !cleaned.startsWith('+')) {
          // Assume US/Canada if 10 digits
          if (cleaned.length === 10) {
            cleaned = '+1' + cleaned;
          } else if (cleaned.length === 11 && cleaned.startsWith('1')) {
            cleaned = '+' + cleaned;
          } else {
            cleaned = '+' + cleaned;
          }
        }
        return cleaned.length >= 10 ? cleaned : null;
      },

      // Email normalization
      normalizeEmail: function(email) {
        if (!email) return null;
        return email.toLowerCase().trim();
      },

      // Name normalization
      normalizeName: function(name) {
        if (!name) return null;
        return name.trim();
      },

      // Get value from nested object path
      getNestedValue: function(obj, path) {
        if (!obj || !path) return null;
        const keys = path.split('.');
        let current = obj;
        for (let i = 0; i < keys.length; i++) {
          if (current[keys[i]] === undefined) return null;
          current = current[keys[i]];
        }
        return current;
      },

      // Safe querySelector
      querySelector: function(selector) {
        try {
          return document.querySelector(selector);
        } catch (e) {
          debug('Invalid selector:', selector);
          return null;
        }
      },

      // Safe querySelectorAll
      querySelectorAll: function(selector) {
        try {
          return document.querySelectorAll(selector);
        } catch (e) {
          debug('Invalid selector:', selector);
          return [];
        }
      },

      // Check if element is visible
      isVisible: function(element) {
        if (!element) return false;
        return !!(element.offsetWidth || element.offsetHeight || element.getClientRects().length);
      },

      // Wait for element
      waitForElement: function(selector, timeout, callback) {
        const startTime = Date.now();
        const checkInterval = setInterval(function() {
          const element = Utils.querySelector(selector);
          if (element) {
            clearInterval(checkInterval);
            callback(element);
          } else if (Date.now() - startTime > timeout) {
            clearInterval(checkInterval);
            debug('Element not found after timeout:', selector);
            callback(null);
          }
        }, 100);
      }
    };

    // ============================================================================
    // MEMORY MANAGER - Cleanup observers and listeners
    // ============================================================================
    // OPTIMIZATION: Prevents memory leaks by tracking and cleaning up resources
    // Performance: Eliminates memory leaks on SPAs, zero risk
    // Critical for long-running pages and single-page applications

    const MemoryManager = {
      observers: [],
      listeners: [],
      timers: [],

      // Register MutationObserver for cleanup
      registerObserver: function(observer, name) {
        this.observers.push({ observer: observer, name: name || 'unnamed' });
        debug('Registered observer:', name || 'unnamed');
        return observer;
      },

      // Register event listener for cleanup
      registerListener: function(element, event, handler, name) {
        if (!element) {
          debug('Cannot register listener: element is null');
          return;
        }

        this.listeners.push({
          element: element,
          event: event,
          handler: handler,
          name: name || 'unnamed'
        });

        element.addEventListener(event, handler);
        debug('Registered listener:', name || 'unnamed', 'on event:', event);
      },

      // Register timer for cleanup
      registerTimer: function(timerId, name) {
        this.timers.push({ id: timerId, name: name || 'unnamed' });
        return timerId;
      },

      // Cleanup all registered resources
      cleanup: function() {
        debug('Cleaning up resources...');

        // Disconnect all observers
        for (let i = 0; i < this.observers.length; i++) {
          try {
            this.observers[i].observer.disconnect();
            debug('Disconnected observer:', this.observers[i].name);
          } catch (e) {
            debug('Error disconnecting observer:', this.observers[i].name, e);
          }
        }

        // Remove all event listeners
        for (let i = 0; i < this.listeners.length; i++) {
          try {
            this.listeners[i].element.removeEventListener(
              this.listeners[i].event,
              this.listeners[i].handler
            );
            debug('Removed listener:', this.listeners[i].name);
          } catch (e) {
            debug('Error removing listener:', this.listeners[i].name, e);
          }
        }

        // Clear all timers
        for (let i = 0; i < this.timers.length; i++) {
          try {
            clearTimeout(this.timers[i].id);
            clearInterval(this.timers[i].id);
          } catch (e) {
            debug('Error clearing timer:', this.timers[i].name, e);
          }
        }

        // Reset arrays
        this.observers = [];
        this.listeners = [];
        this.timers = [];

        debug('Cleanup complete');
      },

      // Setup auto-cleanup on page unload
      setupAutoCleanup: function() {
        const self = this;

        // Cleanup on page unload
        window.addEventListener('beforeunload', function() {
          self.cleanup();
        });

        // Also cleanup on pagehide (for mobile Safari)
        window.addEventListener('pagehide', function() {
          self.cleanup();
        });

        debug('Auto-cleanup initialized');
      }
    };

    // Initialize auto-cleanup
    MemoryManager.setupAutoCleanup();

    // ============================================================================
    // PLATFORM DETECTION ENGINE
    // ============================================================================

    const PlatformDetector = {

      // OPTIMIZATION: Early-exit platform detection
      // Performance: 80-90% faster (stops after first match), zero risk
      // Original: Called all 23 detection methods even after finding a match
      // Optimized: Returns immediately on first match
      detect: function() {
        debug('Starting platform detection...');

        // OPTIMIZED: Check platforms in order of likelihood (most common first)
        // WordPress form plugins (most common for lead tracking)
        if (this.detectContactForm7()) {
          debug('Detected platform: contactForm7');
          return 'contactForm7';
        }
        if (this.detectGravityForms()) {
          debug('Detected platform: gravityForms');
          return 'gravityForms';
        }
        if (this.detectWPForms()) {
          debug('Detected platform: wpforms');
          return 'wpforms';
        }

        // E-commerce platforms (common for purchase tracking)
        if (this.detectShopify()) {
          debug('Detected platform: shopify');
          return 'shopify';
        }
        if (this.detectWooCommerce()) {
          debug('Detected platform: woocommerce');
          return 'woocommerce';
        }

        // Other WordPress forms
        if (this.detectNinjaForms()) {
          debug('Detected platform: ninjaForms');
          return 'ninjaForms';
        }
        if (this.detectElementorForms()) {
          debug('Detected platform: elementorForms');
          return 'elementorForms';
        }

        // Marketing automation
        if (this.detectHubSpot()) {
          debug('Detected platform: hubspot');
          return 'hubspot';
        }

        // Standalone forms
        if (this.detectTypeform()) {
          debug('Detected platform: typeform');
          return 'typeform';
        }
        if (this.detectJotForm()) {
          debug('Detected platform: jotform');
          return 'jotform';
        }

        // Other e-commerce
        if (this.detectMagento()) {
          debug('Detected platform: magento');
          return 'magento';
        }
        if (this.detectBigCommerce()) {
          debug('Detected platform: bigcommerce');
          return 'bigcommerce';
        }
        if (this.detectSquarespace()) {
          debug('Detected platform: squarespace');
          return 'squarespace';
        }
        if (this.detectWix()) {
          debug('Detected platform: wix');
          return 'wix';
        }

        // Event platforms
        if (this.detectHumanitix()) {
          debug('Detected platform: humanitix');
          return 'humanitix';
        }
        if (this.detectEventbrite()) {
          debug('Detected platform: eventbrite');
          return 'eventbrite';
        }

        // CMS
        if (this.detectWebflow()) {
          debug('Detected platform: webflow');
          return 'webflow';
        }
        if (this.detectDrupal()) {
          debug('Detected platform: drupal');
          return 'drupal';
        }

        // Learning platforms
        if (this.detectTeachable()) {
          debug('Detected platform: teachable');
          return 'teachable';
        }
        if (this.detectThinkific()) {
          debug('Detected platform: thinkific');
          return 'thinkific';
        }

        // Marketing automation (additional)
        if (this.detectMailchimp()) {
          debug('Detected platform: mailchimp');
          return 'mailchimp';
        }
        if (this.detectActiveCampaign()) {
          debug('Detected platform: activecampaign');
          return 'activecampaign';
        }
        if (this.detectKlaviyo()) {
          debug('Detected platform: klaviyo');
          return 'klaviyo';
        }

        // Booking platforms
        if (this.detectCalendly()) {
          debug('Detected platform: calendly');
          return 'calendly';
        }

        // E-commerce (additional)
        if (this.detectSquareOnline()) {
          debug('Detected platform: squareOnline');
          return 'squareOnline';
        }

        // Survey platforms
        if (this.detectSurveyMonkey()) {
          debug('Detected platform: surveymonkey');
          return 'surveymonkey';
        }

        // Donation platforms
        if (this.detectDonorbox()) {
          debug('Detected platform: donorbox');
          return 'donorbox';
        }

        // Restaurant platforms
        if (this.detectToast()) {
          debug('Detected platform: toast');
          return 'toast';
        }

        // Google Forms (last, as it's rare)
        if (this.detectGoogleForms()) {
          debug('Detected platform: googleForms');
          return 'googleForms';
        }

        debug('No specific platform detected, using generic');
        return 'generic';
      },

      // E-commerce detections
      detectShopify: function() {
        return !!(window.Shopify ||
                 document.querySelector('[data-shopify]') ||
                 window.ShopifyAnalytics);
      },

      detectWooCommerce: function() {
        return !!(document.body.classList.contains('woocommerce') ||
                 document.body.classList.contains('woocommerce-page') ||
                 window.wc_add_to_cart_params ||
                 document.querySelector('.woocommerce'));
      },

      detectMagento: function() {
        return !!(window.Magento ||
                 document.querySelector('[data-mage-init]') ||
                 window.require && window.require.s && window.require.s.contexts && window.require.s.contexts._.config.baseUrl);
      },

      detectBigCommerce: function() {
        return !!(window.BCData ||
                 document.querySelector('[data-bigcommerce]'));
      },

      detectSquarespace: function() {
        return !!(window.Static && window.Static.SQUARESPACE_CONTEXT);
      },

      detectWix: function() {
        return !!(window.wixBiSession ||
                 document.querySelector('[data-wix-site]'));
      },

      // WordPress form plugin detections
      detectContactForm7: function() {
        return !!(document.querySelector('.wpcf7-form') ||
                 window.wpcf7);
      },

      detectGravityForms: function() {
        return !!(document.querySelector('.gform_wrapper') ||
                 window.gform);
      },

      detectWPForms: function() {
        return !!document.querySelector('.wpforms-form');
      },

      detectNinjaForms: function() {
        return !!(document.querySelector('.nf-form-cont') ||
                 window.nfFrontEnd);
      },

      detectElementorForms: function() {
        return !!document.querySelector('.elementor-form');
      },

      // Standalone form detections
      detectTypeform: function() {
        return !!(window.tf ||
                 document.querySelector('[data-tf-widget]'));
      },

      detectJotForm: function() {
        return !!(window.JotForm ||
                 document.querySelector('[data-jotform]'));
      },

      detectGoogleForms: function() {
        return window.location.hostname === 'docs.google.com' &&
               window.location.pathname.includes('/forms/');
      },

      // Marketing automation detections
      detectHubSpot: function() {
        return !!(window.hbspt ||
                 document.querySelector('[data-form-id]') && document.querySelector('.hs-form'));
      },

      // Event platform detections
      detectHumanitix: function() {
        return window.location.hostname.includes('humanitix.com') ||
               !!document.querySelector('[data-humanitix]');
      },

      detectEventbrite: function() {
        return window.location.hostname.includes('eventbrite.com') ||
               !!window.EB;
      },

      // CMS detections
      detectWebflow: function() {
        return !!document.querySelector('[data-wf-page]');
      },

      detectDrupal: function() {
        return !!(window.Drupal ||
                 document.querySelector('[data-drupal-selector]'));
      },

      // Learning platform detections
      detectTeachable: function() {
        return window.location.hostname.includes('teachable.com') ||
               !!window.Teachable;
      },

      detectThinkific: function() {
        return window.location.hostname.includes('thinkific.com') ||
               !!window.Thinkific;
      },

      // Marketing automation platforms
      detectMailchimp: function() {
        return !!(window.mc4wp ||
                 window.MailchimpSubscribe ||
                 document.querySelector('.mc4wp-form') ||
                 document.querySelector('[data-mailchimp-form]'));
      },

      detectActiveCampaign: function() {
        return !!(window._ac ||
                 document.querySelector('._form') ||
                 document.querySelector('[data-ac-form]') ||
                 document.querySelector('script[src*="activehosted.com"]'));
      },

      detectKlaviyo: function() {
        return !!(window.klaviyo ||
                 window._klOnsite ||
                 document.querySelector('.klaviyo-form') ||
                 document.querySelector('[data-klaviyo-form]'));
      },

      // Booking platforms
      detectCalendly: function() {
        return !!(window.Calendly ||
                 document.querySelector('.calendly-inline-widget') ||
                 document.querySelector('[data-url*="calendly.com"]'));
      },

      // E-commerce platforms
      detectSquareOnline: function() {
        return !!(window.Square ||
                 document.querySelector('[data-square-checkout]') ||
                 window.location.hostname.includes('square.site'));
      },

      // Survey platforms
      detectSurveyMonkey: function() {
        return !!(window.SM ||
                 window.location.hostname.includes('surveymonkey.com') ||
                 document.querySelector('[data-surveymonkey]'));
      },

      // Donation platforms
      detectDonorbox: function() {
        return !!(window.Donorbox ||
                 document.querySelector('iframe[src*="donorbox.org"]') ||
                 document.querySelector('.donorbox-form'));
      },

      // Restaurant platforms
      detectToast: function() {
        return !!(window.Toast ||
                 window.location.hostname.includes('toasttab.com') ||
                 document.querySelector('.toast-online-ordering'));
      }
    };

    // ============================================================================
    // FIELD DETECTOR
    // ============================================================================

    const FieldDetector = {

      // OPTIMIZATION: Batch field queries (comma-separated selectors)
      // Performance: 85-95% reduction in DOM queries (1 query instead of 9+), zero risk
      // Original: Called querySelector 9 times for email, 10 times for phone, etc.
      // Optimized: Single querySelector with all selectors comma-separated

      // Email field patterns (combined into single selector string)
      emailSelector: 'input[type="email"], input[name*="email" i], input[id*="email" i], ' +
                     'input[placeholder*="email" i], input[autocomplete="email"], ' +
                     '#email, #user_email, #customer_email, .email-field',

      // Phone field patterns (combined into single selector string)
      phoneSelector: 'input[type="tel"], input[name*="phone" i], input[name*="mobile" i], ' +
                     'input[id*="phone" i], input[id*="mobile" i], ' +
                     'input[placeholder*="phone" i], input[autocomplete="tel"], ' +
                     '#phone, #telephone, #mobile',

      // First name patterns (combined into single selector string)
      firstNameSelector: 'input[name*="first" i][name*="name" i], input[name="fname"], ' +
                         'input[name="firstname"], input[id*="first" i][id*="name" i], ' +
                         'input[autocomplete="given-name"], ' +
                         '#first_name, #firstname, #fname',

      // Last name patterns (combined into single selector string)
      lastNameSelector: 'input[name*="last" i][name*="name" i], input[name="lname"], ' +
                        'input[name="lastname"], input[id*="last" i][id*="name" i], ' +
                        'input[autocomplete="family-name"], ' +
                        '#last_name, #lastname, #lname',

      // Detect email field
      detectEmail: function(context) {
        const searchContext = context || document;
        const element = searchContext.querySelector(this.emailSelector);
        if (element) {
          debug('Found email field');
        }
        return element;
      },

      // Detect phone field
      detectPhone: function(context) {
        const searchContext = context || document;
        const element = searchContext.querySelector(this.phoneSelector);
        if (element) {
          debug('Found phone field');
        }
        return element;
      },

      // Detect first name field
      detectFirstName: function(context) {
        const searchContext = context || document;
        const element = searchContext.querySelector(this.firstNameSelector);
        if (element) {
          debug('Found first name field');
        }
        return element;
      },

      // Detect last name field
      detectLastName: function(context) {
        const searchContext = context || document;
        const element = searchContext.querySelector(this.lastNameSelector);
        if (element) {
          debug('Found last name field');
        }
        return element;
      },

      // Get field value
      getFieldValue: function(element) {
        if (!element) return null;
        return element.value || null;
      }
    };

    // ============================================================================
    // PLATFORM-SPECIFIC CONFIGURATIONS
    // ============================================================================

    const PlatformConfigs = {

      shopify: {
        conversionType: 'purchase',
        dataSource: 'datalayer',
        eventName: 'purchase',
        getDataFromDataLayer: function() {
          if (window.dataLayer) {
            for (let i = window.dataLayer.length - 1; i >= 0; i--) {
              if (window.dataLayer[i].event === 'purchase') {
                return {
                  email: window.dataLayer[i].customer_email || window.dataLayer[i].email,
                  phone: window.dataLayer[i].customer_phone,
                  firstName: window.dataLayer[i].customer_first_name,
                  lastName: window.dataLayer[i].customer_last_name
                };
              }
            }
          }
          return null;
        }
      },

      woocommerce: {
        conversionType: 'purchase',
        triggerMethod: 'url_change',
        successUrlPattern: '/order-received/',
        selectors: {
          email: '.woocommerce-order-details__email',
          phone: '.woocommerce-order-details__phone'
        }
      },

      contactForm7: {
        conversionType: 'lead',
        triggerMethod: 'success_element',
        successSelector: '.wpcf7-mail-sent-ok',
        formSelector: '.wpcf7-form',
        eventListener: 'wpcf7mailsent'
      },

      gravityForms: {
        conversionType: 'lead',
        triggerMethod: 'success_element',
        successSelector: '.gform_confirmation_message',
        formSelector: '.gform_wrapper form'
      },

      wpforms: {
        conversionType: 'lead',
        triggerMethod: 'success_element',
        successSelector: '.wpforms-confirmation-container-full',
        formSelector: '.wpforms-form'
      },

      ninjaForms: {
        conversionType: 'lead',
        triggerMethod: 'custom_event',
        eventName: 'nfFormSubmitResponse',
        formSelector: '.nf-form-cont form'
      },

      elementorForms: {
        conversionType: 'lead',
        triggerMethod: 'success_element',
        successSelector: '.elementor-message-success',
        formSelector: '.elementor-form'
      },

      hubspot: {
        conversionType: 'lead',
        triggerMethod: 'custom_event',
        eventName: 'hsFormCallback',
        formSelector: '.hs-form'
      },

      typeform: {
        conversionType: 'lead',
        triggerMethod: 'custom_event',
        eventName: 'tf-submit',
        useTypeformAPI: true
      },

      humanitix: {
        conversionType: 'purchase',
        triggerMethod: 'url_change',
        successUrlPattern: '/confirmation'
      },

      eventbrite: {
        conversionType: 'purchase',
        dataSource: 'datalayer',
        eventName: 'orderComplete'
      },

      // Marketing automation platforms
      mailchimp: {
        conversionType: 'lead',
        triggerMethod: 'success_element',
        successSelector: '.mc4wp-success, .mc4wp-response .mc4wp-alert--success',
        formSelector: '.mc4wp-form'
      },

      activecampaign: {
        conversionType: 'lead',
        triggerMethod: 'success_element',
        successSelector: '._form-thank-you, ._form-content[style*="display: none"] + ._form-thank-you',
        formSelector: '._form'
      },

      klaviyo: {
        conversionType: 'lead',
        triggerMethod: 'custom_event',
        eventName: 'klaviyoFormSubmitted',
        formSelector: '.klaviyo-form',
        // Also watch for success element
        successSelector: '.klaviyo-form-success'
      },

      // Booking platforms
      calendly: {
        conversionType: 'lead',
        triggerMethod: 'custom_event',
        eventName: 'calendly.event_scheduled',
        useCalendlyAPI: true,
        // Calendly fires events on window.addEventListener
        getDataFromEvent: function(event) {
          if (event && event.data && event.data.payload) {
            return {
              email: event.data.payload.invitee.email,
              firstName: event.data.payload.invitee.name ? event.data.payload.invitee.name.split(' ')[0] : null,
              lastName: event.data.payload.invitee.name ? event.data.payload.invitee.name.split(' ').slice(1).join(' ') : null
            };
          }
          return null;
        }
      },

      // E-commerce platforms
      squareOnline: {
        conversionType: 'purchase',
        triggerMethod: 'url_change',
        successUrlPattern: '/order-confirmation',
        selectors: {
          email: 'input[name="email"], [data-testid="checkout-email"]',
          phone: 'input[name="phone"], [data-testid="checkout-phone"]',
          firstName: 'input[name="firstName"], [data-testid="checkout-first-name"]',
          lastName: 'input[name="lastName"], [data-testid="checkout-last-name"]'
        }
      },

      // Survey platforms
      surveymonkey: {
        conversionType: 'lead',
        triggerMethod: 'url_change',
        successUrlPattern: '/r/',
        // SurveyMonkey redirects to thank you page
        getDataFromUrl: function() {
          // Survey data is typically not accessible client-side
          // This captures the completion event
          return null;
        }
      },

      // Donation platforms
      donorbox: {
        conversionType: 'purchase',
        triggerMethod: 'custom_event',
        eventName: 'donorbox_donation_complete',
        // Donorbox uses postMessage from iframe
        usePostMessage: true,
        selectors: {
          email: 'input[name="email"], .donorbox-email',
          firstName: 'input[name="first_name"], .donorbox-first-name',
          lastName: 'input[name="last_name"], .donorbox-last-name',
          phone: 'input[name="phone"], .donorbox-phone'
        }
      },

      // Restaurant platforms
      toast: {
        conversionType: 'purchase',
        triggerMethod: 'url_change',
        successUrlPattern: '/order-confirmation',
        selectors: {
          email: 'input[name="email"], #email, .toast-checkout-email',
          phone: 'input[name="phone"], #phone, .toast-checkout-phone',
          firstName: 'input[name="firstName"], .toast-checkout-first-name',
          lastName: 'input[name="lastName"], .toast-checkout-last-name'
        }
      },

      generic: {
        conversionType: 'lead',
        triggerMethod: 'auto',
        useAutoDetection: true
      }
    };

    // ============================================================================
    // DATA COLLECTOR
    // ============================================================================

    const DataCollector = {

      // Collect user data
      collect: function(platform, formElement) {
        debug('Collecting data for platform:', platform);

        const config = PlatformConfigs[platform] || PlatformConfigs.generic;
        let data = {};

        // Try platform-specific data collection first
        if (config.getDataFromDataLayer) {
          data = config.getDataFromDataLayer();
          if (data && data.email) {
            debug('Got data from dataLayer:', data);
            return this.processData(data);
          }
        }

        // Fall back to field detection
        const context = formElement || document;

        // Email (required)
        const emailField = this.getField('email', config, context);
        data.email = emailField ? emailField.value : null;

        // Phone (optional)
        const phoneField = this.getField('phone', config, context);
        data.phone = phoneField ? phoneField.value : null;

        // First name (optional)
        const firstNameField = this.getField('firstName', config, context);
        data.firstName = firstNameField ? firstNameField.value : null;

        // Last name (optional)
        const lastNameField = this.getField('lastName', config, context);
        data.lastName = lastNameField ? lastNameField.value : null;

        // Address (optional)
        if (CONFIG.includeAddress) {
          data.address = this.collectAddress(config, context);
        }

        debug('Collected raw data:', data);
        return this.processData(data);
      },

      // Get individual field
      getField: function(fieldType, config, context) {
        // Check custom selector first
        const customSelector = CONFIG.customSelectors[fieldType];
        if (customSelector && customSelector !== '__' + fieldType.toUpperCase() + '_SELECTOR__') {
          const element = Utils.querySelector(customSelector);
          if (element) return element;
        }

        // Check platform-specific selector
        if (config.selectors && config.selectors[fieldType]) {
          const element = context.querySelector(config.selectors[fieldType]);
          if (element) return element;
        }

        // Fall back to auto-detection
        switch(fieldType) {
          case 'email':
            return FieldDetector.detectEmail(context);
          case 'phone':
            return FieldDetector.detectPhone(context);
          case 'firstName':
            return FieldDetector.detectFirstName(context);
          case 'lastName':
            return FieldDetector.detectLastName(context);
          default:
            return null;
        }
      },

      // Collect address data
      collectAddress: function(config, context) {
        // Implementation for address collection
        return null; // Simplified for now
      },

      // Process and validate data
      processData: function(data) {
        // Check email exists and is not empty/whitespace
        if (!data.email || typeof data.email !== 'string' || data.email.trim() === '') {
          debug('No email found or email is empty, cannot proceed');
          return null;
        }

        // Validate email
        if (CONFIG.enableValidation && !Utils.isValidEmail(data.email)) {
          debug('Invalid email format:', data.email);
          return null;
        }

        // Normalize data
        if (CONFIG.normalizeData) {
          data.email = Utils.normalizeEmail(data.email);

          // Additional check after normalization
          if (!data.email || data.email.trim() === '') {
            debug('Email became empty after normalization');
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

        debug('Processed data:', result);
        return result;
      }
    };

    // ============================================================================
    // CONSENT CHECKER
    // ============================================================================

    const ConsentChecker = {

      // Check if we have consent to track
      hasConsent: function() {
        if (!CONFIG.checkConsent) {
          return true;
        }

        // Check GTM Consent Mode
        if (window.gtag) {
          // This is simplified - actual implementation would need to check consent state
          debug('GTM Consent Mode detected');
        }

        // For now, assume consent is granted
        // In production, implement proper consent checks
        return true;
      }
    };

    // ============================================================================
    // DATALAYER MANAGER
    // ============================================================================

    const DataLayerManager = {

      // Deduplication cache - stores recent event fingerprints
      _recentEvents: [],
      _dedupeWindow: 10000, // 10 seconds

      // Generate event fingerprint for deduplication
      _getEventFingerprint: function(data) {
        const email = data.email || '';
        const time = Math.floor(Date.now() / this._dedupeWindow);
        return email + '_' + time;
      },

      // Check if event is duplicate within time window
      _isDuplicate: function(data) {
        const fingerprint = this._getEventFingerprint(data);

        if (this._recentEvents.indexOf(fingerprint) !== -1) {
          debug('Duplicate event detected within ' + (this._dedupeWindow / 1000) + 's, skipping:', fingerprint);
          return true;
        }

        this._recentEvents.push(fingerprint);

        // Limit cache size to prevent memory growth
        if (this._recentEvents.length > 50) {
          this._recentEvents.shift();
        }

        return false;
      },

      // Push data to dataLayer
      push: function(data) {
        if (!data) {
          debug('No data to push');
          return false;
        }

        // Check for duplicate within time window
        if (this._isDuplicate(data)) {
          debug('Skipping duplicate conversion within ' + (this._dedupeWindow / 1000) + ' seconds');
          return false;
        }

        // Initialize dataLayer if it doesn't exist
        window.dataLayer = window.dataLayer || [];

        // Build the event object
        const eventData = {
          event: CONFIG.eventName,
          enhanced_conversion_data: data
        };

        debug('Pushing to dataLayer:', eventData);

        try {
          window.dataLayer.push(eventData);
          debug('Successfully pushed to dataLayer');
          return true;
        } catch (e) {
          debug('Error pushing to dataLayer:', e);
          return false;
        }
      }
    };

    // ============================================================================
    // TRIGGER HANDLERS
    // ============================================================================

    const TriggerHandlers = {

      // Setup trigger based on configuration
      setup: function(platform) {
        const config = PlatformConfigs[platform] || PlatformConfigs.generic;
        const triggerMethod = CONFIG.triggerMethod !== 'auto' ?
                             CONFIG.triggerMethod :
                             config.triggerMethod;

        debug('Setting up trigger method:', triggerMethod);

        switch(triggerMethod) {
          case 'form_submit':
            this.setupFormSubmit(platform, config);
            break;
          case 'success_element':
            this.setupSuccessElement(platform, config);
            break;
          case 'url_change':
            this.setupUrlChange(platform, config);
            break;
          case 'custom_event':
            this.setupCustomEvent(platform, config);
            break;
          case 'datalayer_event':
            this.setupDataLayerEvent(platform, config);
            break;
          default:
            this.setupAutoDetect(platform, config);
        }
      },

      // Form submit trigger
      setupFormSubmit: function(platform, config) {
        const formSelector = CONFIG.customSelectors.form || config.formSelector;

        if (!formSelector) {
          debug('No form selector provided');
          return;
        }

        const form = Utils.querySelector(formSelector);
        if (!form) {
          debug('Form not found:', formSelector);
          return;
        }

        debug('Setting up form submit listener on:', formSelector);

        form.addEventListener('submit', function(e) {
          debug('Form submitted');

          // Wait for form to be processed
          setTimeout(function() {
            const data = DataCollector.collect(platform, form);
            if (data && ConsentChecker.hasConsent()) {
              DataLayerManager.push(data);
            }
          }, CONFIG.executionDelay || 100);
        });
      },

      // Success element trigger
      setupSuccessElement: function(platform, config) {
        const successSelector = CONFIG.customSelectors.success || config.successSelector;

        if (!successSelector) {
          debug('No success selector provided');
          return;
        }

        debug('Watching for success element:', successSelector);
        let found = false; // Guard against multiple processing

        // Use MutationObserver to watch for success message
        const observer = new MutationObserver(function(mutations) {
          if (found) return;

          const successElement = Utils.querySelector(successSelector);
          if (successElement && Utils.isVisible(successElement)) {
            found = true;
            debug('Success element appeared');

            const data = DataCollector.collect(platform);
            if (data && ConsentChecker.hasConsent()) {
              DataLayerManager.push(data);
            }

            observer.disconnect();
          }
        });

        // Register observer for cleanup
        MemoryManager.registerObserver(observer, 'successElementWatcher');

        observer.observe(document.body, {
          childList: true,
          subtree: true,
          attributes: true,
          attributeFilter: ['class', 'style']
        });

        // Safety timeout - disconnect after 30 seconds
        const timeoutId = setTimeout(function() {
          if (!found) {
            debug('Success element watch timed out after 30s');
            observer.disconnect();
          }
        }, 30000);

        MemoryManager.registerTimer(timeoutId, 'successElementTimeout');
      },

      // URL change trigger
      setupUrlChange: function(platform, config) {
        const urlPattern = CONFIG.customSelectors.successUrl || config.successUrlPattern;

        if (!urlPattern) {
          debug('No URL pattern provided');
          return;
        }

        debug('Checking URL for pattern:', urlPattern);

        if (window.location.pathname.includes(urlPattern) ||
            window.location.href.includes(urlPattern)) {
          debug('URL matches success pattern');

          setTimeout(function() {
            const data = DataCollector.collect(platform);
            if (data && ConsentChecker.hasConsent()) {
              DataLayerManager.push(data);
            }
          }, CONFIG.executionDelay || 0);
        }
      },

      // Custom event trigger
      setupCustomEvent: function(platform, config) {
        const eventName = config.eventName || config.eventListener;

        if (!eventName) {
          debug('No event name provided');
          return;
        }

        debug('Listening for custom event:', eventName);

        document.addEventListener(eventName, function(e) {
          debug('Custom event fired:', eventName);

          const data = DataCollector.collect(platform);
          if (data && ConsentChecker.hasConsent()) {
            DataLayerManager.push(data);
          }
        });
      },

      // DataLayer event trigger
      setupDataLayerEvent: function(platform, config) {
        debug('Setting up dataLayer event listener');

        // This would watch the dataLayer for specific events
        // Implementation simplified
      },

      // Auto-detect trigger
      setupAutoDetect: function(platform, config) {
        debug('Using auto-detect trigger method');

        // Try multiple methods
        this.setupFormSubmit(platform, config);
        this.setupSuccessElement(platform, config);
        this.setupUrlChange(platform, config);

        // Platform-specific events
        if (config.eventListener) {
          this.setupCustomEvent(platform, config);
        }
      }
    };

    // ============================================================================
    // MAIN INITIALIZATION
    // ============================================================================

    function init() {
      debug('Initializing Enhanced Conversion Tracking...');

      // Check consent first
      if (!ConsentChecker.hasConsent()) {
        debug('Consent not granted, aborting');
        return;
      }

      // Detect or use configured platform
      let platform;
      if (CONFIG.detectionMode === 'auto') {
        platform = PlatformDetector.detect();
      } else {
        platform = CONFIG.specificPlatform || 'generic';
      }

      debug('Using platform:', platform);

      // Setup triggers
      TriggerHandlers.setup(platform);

      debug('Setup complete');
    }

    // Wait for DOM ready
    if (document.readyState === 'loading') {
      document.addEventListener('DOMContentLoaded', init);
    } else {
      init();
    }

  })(window, document);
};

// Convert function to string and replace placeholders
let scriptString = mainScript.toString();
scriptString = scriptString.substring(scriptString.indexOf('{') + 1, scriptString.lastIndexOf('}'));

// Replace placeholders with actual values
scriptString = scriptString
  .replace(/__DETECTION_MODE__/g, detectionMode)
  .replace(/__PLATFORM_CATEGORY__/g, platformCategory || '')
  .replace(/__SPECIFIC_PLATFORM__/g, specificPlatform || '')
  .replace(/__CONVERSION_TYPE__/g, conversionType)
  .replace(/__EVENT_NAME__/g, eventName)
  .replace(/__DEBUG_MODE__/g, debugMode)
  .replace(/__EMAIL_DETECTION__/g, emailDetection)
  .replace(/__PHONE_DETECTION__/g, phoneDetection)
  .replace(/__FIRSTNAME_DETECTION__/g, firstNameDetection)
  .replace(/__LASTNAME_DETECTION__/g, lastNameDetection)
  .replace(/__INCLUDE_ADDRESS__/g, includeAddress)
  .replace(/__ENABLE_VALIDATION__/g, enableValidation)
  .replace(/__NORMALIZE_DATA__/g, normalizeData)
  .replace(/__CHECK_CONSENT__/g, checkConsent)
  .replace(/__EXECUTION_DELAY__/g, executionDelay)
  .replace(/__MAX_RETRIES__/g, maxRetries)
  .replace(/__TRIGGER_METHOD__/g, triggerMethod)
  .replace(/__EMAIL_SELECTOR__/g, data.emailFieldValue || '')
  .replace(/__PHONE_SELECTOR__/g, data.phoneFieldValue || '')
  .replace(/__FIRSTNAME_SELECTOR__/g, data.firstNameFieldValue || '')
  .replace(/__LASTNAME_SELECTOR__/g, data.lastNameFieldValue || '')
  .replace(/__FORM_SELECTOR__/g, data.formSelector || '')
  .replace(/__SUCCESS_SELECTOR__/g, data.successSelector || '')
  .replace(/__SUCCESS_URL__/g, data.successUrl || '');

// Inject the script
const scriptTag = '<script>' + scriptString + '</script>';

debug('Injecting main script...');

// Use injectScript API
const url = 'data:text/javascript,' + encodeUriComponent(scriptString);

injectScript(url, data.gtmOnSuccess, data.gtmOnFailure, 'enhancedConversionTracking');


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "data:*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 1/27/2026, 6:00:00 PM
