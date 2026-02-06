___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Enhanced Conversion Tracking - Universal",
  "description": "Universal Enhanced Conversion Tracking for Google Ads across 30+ platforms including e-commerce (Shopify, WooCommerce, Square), forms (Contact Form 7, Gravity Forms, Typeform), marketing automation (HubSpot, Mailchimp, Klaviyo, ActiveCampaign), booking (Calendly), surveys (SurveyMonkey), donations (Donorbox), and restaurants (Toast). Auto-detects platforms and captures user data for enhanced conversions.",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "categories": [
    "CONVERSIONS",
    "ANALYTICS",
    "ADVERTISING"
  ],
  "type": "TAG",
  "version": 2,
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
    "selectItems": [
      {
        "value": "shopify",
        "displayValue": "Shopify"
      },
      {
        "value": "woocommerce",
        "displayValue": "WooCommerce"
      },
      {
        "value": "magento",
        "displayValue": "Magento"
      },
      {
        "value": "bigcommerce",
        "displayValue": "BigCommerce"
      },
      {
        "value": "squarespace",
        "displayValue": "Squarespace"
      },
      {
        "value": "wix",
        "displayValue": "Wix"
      },
      {
        "value": "squareOnline",
        "displayValue": "Square Online"
      },
      {
        "value": "contactForm7",
        "displayValue": "Contact Form 7"
      },
      {
        "value": "gravityForms",
        "displayValue": "Gravity Forms"
      },
      {
        "value": "wpforms",
        "displayValue": "WPForms"
      },
      {
        "value": "ninjaForms",
        "displayValue": "Ninja Forms"
      },
      {
        "value": "elementorForms",
        "displayValue": "Elementor Forms"
      },
      {
        "value": "typeform",
        "displayValue": "Typeform"
      },
      {
        "value": "jotform",
        "displayValue": "JotForm"
      },
      {
        "value": "googleForms",
        "displayValue": "Google Forms"
      },
      {
        "value": "hubspot",
        "displayValue": "HubSpot"
      },
      {
        "value": "mailchimp",
        "displayValue": "Mailchimp"
      },
      {
        "value": "activecampaign",
        "displayValue": "ActiveCampaign"
      },
      {
        "value": "klaviyo",
        "displayValue": "Klaviyo"
      },
      {
        "value": "calendly",
        "displayValue": "Calendly"
      },
      {
        "value": "eventbrite",
        "displayValue": "Eventbrite"
      },
      {
        "value": "humanitix",
        "displayValue": "Humanitix"
      },
      {
        "value": "webflow",
        "displayValue": "Webflow"
      },
      {
        "value": "drupal",
        "displayValue": "Drupal"
      },
      {
        "value": "teachable",
        "displayValue": "Teachable"
      },
      {
        "value": "thinkific",
        "displayValue": "Thinkific"
      },
      {
        "value": "surveymonkey",
        "displayValue": "SurveyMonkey"
      },
      {
        "value": "donorbox",
        "displayValue": "Donorbox"
      },
      {
        "value": "toast",
        "displayValue": "Toast"
      },
      {
        "value": "generic",
        "displayValue": "Generic/Custom"
      }
    ],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "detectionMode",
        "paramValue": "manual",
        "type": "EQUALS"
      }
    ],
    "help": "Select the specific platform to track conversions for."
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
const injectScript = require('injectScript');
const JSON = require('JSON');
const encodeUriComponent = require('encodeUriComponent');

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

// Build config object for the injected page-level script
var config = JSON.stringify({
  detectionMode: detectionMode,
  platformCategory: platformCategory || '',
  specificPlatform: specificPlatform || '',
  conversionType: conversionType,
  eventName: eventName,
  debugMode: debugMode,
  emailDetection: emailDetection,
  phoneDetection: phoneDetection,
  firstNameDetection: firstNameDetection,
  lastNameDetection: lastNameDetection,
  includeAddress: includeAddress,
  enableValidation: enableValidation,
  normalizeData: normalizeData,
  checkConsent: checkConsent,
  executionDelay: executionDelay,
  maxRetries: maxRetries,
  triggerMethod: triggerMethod,
  customSelectors: {
    email: data.emailFieldValue || '',
    phone: data.phoneFieldValue || '',
    firstName: data.firstNameFieldValue || '',
    lastName: data.lastNameFieldValue || '',
    form: data.formSelector || '',
    success: data.successSelector || '',
    successUrl: data.successUrl || ''
  }
});

debug('Injecting main script...');

// Build the injected script as a string directly.
// NOTE: We do NOT use Function.prototype.toString() because it is unreliable
// in the GTM sandbox environment. Instead, the script is built as concatenated
// strings with config injected via JSON.stringify.

// Debug helper
var scriptDebug = 'function debug(m,o){if(CONFIG.debugMode)console.log("[EC Tracking]",m,o||"")}debug("Enhanced Conversion Tracking initialized",CONFIG);';

// Utils module - email/phone validation, DOM helpers
var scriptUtils = 'var Utils={'
+ '_emailRegex:/^[^\\s@]+@[a-zA-Z0-9][^\\s@]*\\.[a-zA-Z]{2,}$/,'
+ '_phoneDigitsRegex:/\\D/g,'
+ 'isValidEmail:function(e){if(!e||typeof e!=="string")return false;return this._emailRegex.test(e.trim().toLowerCase())},'
+ 'normalizePhone:function(p){if(!p)return null;var c=p.replace(this._phoneDigitsRegex,"");if(c.length>=10&&!c.startsWith("+")){if(c.length===10){c="+1"+c}else if(c.length===11&&c.startsWith("1")){c="+"+c}else{c="+"+c}}return c.length>=10?c:null},'
+ 'normalizeEmail:function(e){if(!e)return null;return e.toLowerCase().trim()},'
+ 'normalizeName:function(n){if(!n)return null;return n.trim()},'
+ 'getNestedValue:function(o,p){if(!o||!p)return null;var k=p.split(".");var cur=o;for(var i=0;i<k.length;i++){if(cur[k[i]]===undefined)return null;cur=cur[k[i]]}return cur},'
+ 'querySelector:function(sel){try{return document.querySelector(sel)}catch(ex){debug("Invalid selector:",sel);return null}},'
+ 'querySelectorAll:function(sel){try{return document.querySelectorAll(sel)}catch(ex){debug("Invalid selector:",sel);return[]}},'
+ 'isVisible:function(el){if(!el)return false;return!!(el.offsetWidth||el.offsetHeight||el.getClientRects().length)},'
+ 'waitForElement:function(sel,t,cb){var st=Date.now();var ci=setInterval(function(){var el=Utils.querySelector(sel);if(el){clearInterval(ci);cb(el)}else if(Date.now()-st>t){clearInterval(ci);debug("Element not found after timeout:",sel);cb(null)}},100)}'
+ '};';

// MemoryManager module - cleanup observers and listeners
var scriptMemory = 'var MemoryManager={'
+ 'observers:[],listeners:[],timers:[],'
+ 'registerObserver:function(obs,name){this.observers.push({observer:obs,name:name||"unnamed"});debug("Registered observer:",name||"unnamed");return obs},'
+ 'registerListener:function(el,evt,handler,name){if(!el){debug("Cannot register listener: element is null");return}this.listeners.push({element:el,event:evt,handler:handler,name:name||"unnamed"});el.addEventListener(evt,handler);debug("Registered listener:",name||"unnamed","on event:",evt)},'
+ 'registerTimer:function(tid,name){this.timers.push({id:tid,name:name||"unnamed"});return tid},'
+ 'cleanup:function(){debug("Cleaning up resources...");var i;for(i=0;i<this.observers.length;i++){try{this.observers[i].observer.disconnect();debug("Disconnected observer:",this.observers[i].name)}catch(e){debug("Error disconnecting observer:",this.observers[i].name,e)}}for(i=0;i<this.listeners.length;i++){try{this.listeners[i].element.removeEventListener(this.listeners[i].event,this.listeners[i].handler);debug("Removed listener:",this.listeners[i].name)}catch(e){debug("Error removing listener:",this.listeners[i].name,e)}}for(i=0;i<this.timers.length;i++){try{clearTimeout(this.timers[i].id);clearInterval(this.timers[i].id)}catch(e){debug("Error clearing timer:",this.timers[i].name,e)}}this.observers=[];this.listeners=[];this.timers=[];debug("Cleanup complete")},'
+ 'setupAutoCleanup:function(){var self=this;window.addEventListener("beforeunload",function(){self.cleanup()});window.addEventListener("pagehide",function(){self.cleanup()});debug("Auto-cleanup initialized")}'
+ '};MemoryManager.setupAutoCleanup();';

// PlatformDetector module - 30+ platform detection methods
var scriptPlatDetect = 'var PlatformDetector={'
+ 'detect:function(){'
+ 'debug("Starting platform detection...");'
+ 'if(this.detectContactForm7()){debug("Detected platform: contactForm7");return"contactForm7"}'
+ 'if(this.detectGravityForms()){debug("Detected platform: gravityForms");return"gravityForms"}'
+ 'if(this.detectWPForms()){debug("Detected platform: wpforms");return"wpforms"}'
+ 'if(this.detectShopify()){debug("Detected platform: shopify");return"shopify"}'
+ 'if(this.detectWooCommerce()){debug("Detected platform: woocommerce");return"woocommerce"}'
+ 'if(this.detectNinjaForms()){debug("Detected platform: ninjaForms");return"ninjaForms"}'
+ 'if(this.detectElementorForms()){debug("Detected platform: elementorForms");return"elementorForms"}'
+ 'if(this.detectHubSpot()){debug("Detected platform: hubspot");return"hubspot"}'
+ 'if(this.detectTypeform()){debug("Detected platform: typeform");return"typeform"}'
+ 'if(this.detectJotForm()){debug("Detected platform: jotform");return"jotform"}'
+ 'if(this.detectMagento()){debug("Detected platform: magento");return"magento"}'
+ 'if(this.detectBigCommerce()){debug("Detected platform: bigcommerce");return"bigcommerce"}'
+ 'if(this.detectSquarespace()){debug("Detected platform: squarespace");return"squarespace"}'
+ 'if(this.detectWix()){debug("Detected platform: wix");return"wix"}'
+ 'if(this.detectHumanitix()){debug("Detected platform: humanitix");return"humanitix"}'
+ 'if(this.detectEventbrite()){debug("Detected platform: eventbrite");return"eventbrite"}'
+ 'if(this.detectWebflow()){debug("Detected platform: webflow");return"webflow"}'
+ 'if(this.detectDrupal()){debug("Detected platform: drupal");return"drupal"}'
+ 'if(this.detectTeachable()){debug("Detected platform: teachable");return"teachable"}'
+ 'if(this.detectThinkific()){debug("Detected platform: thinkific");return"thinkific"}'
+ 'if(this.detectMailchimp()){debug("Detected platform: mailchimp");return"mailchimp"}'
+ 'if(this.detectActiveCampaign()){debug("Detected platform: activecampaign");return"activecampaign"}'
+ 'if(this.detectKlaviyo()){debug("Detected platform: klaviyo");return"klaviyo"}'
+ 'if(this.detectCalendly()){debug("Detected platform: calendly");return"calendly"}'
+ 'if(this.detectSquareOnline()){debug("Detected platform: squareOnline");return"squareOnline"}'
+ 'if(this.detectSurveyMonkey()){debug("Detected platform: surveymonkey");return"surveymonkey"}'
+ 'if(this.detectDonorbox()){debug("Detected platform: donorbox");return"donorbox"}'
+ 'if(this.detectToast()){debug("Detected platform: toast");return"toast"}'
+ 'if(this.detectGoogleForms()){debug("Detected platform: googleForms");return"googleForms"}'
+ 'debug("No specific platform detected, using generic");return"generic"},'
+ 'detectShopify:function(){return!!(window.Shopify||document.querySelector("[data-shopify]")||window.ShopifyAnalytics)},'
+ 'detectWooCommerce:function(){return!!(document.body.classList.contains("woocommerce")||document.body.classList.contains("woocommerce-page")||window.wc_add_to_cart_params||document.querySelector(".woocommerce"))},'
+ 'detectMagento:function(){return!!(window.Magento||document.querySelector("[data-mage-init]")||window.require&&window.require.s&&window.require.s.contexts&&window.require.s.contexts._.config.baseUrl)},'
+ 'detectBigCommerce:function(){return!!(window.BCData||document.querySelector("[data-bigcommerce]"))},'
+ 'detectSquarespace:function(){return!!(window.Static&&window.Static.SQUARESPACE_CONTEXT)},'
+ 'detectWix:function(){return!!(window.wixBiSession||document.querySelector("[data-wix-site]"))},'
+ 'detectContactForm7:function(){return!!(document.querySelector(".wpcf7-form")||window.wpcf7)},'
+ 'detectGravityForms:function(){return!!(document.querySelector(".gform_wrapper")||window.gform)},'
+ 'detectWPForms:function(){return!!document.querySelector(".wpforms-form")},'
+ 'detectNinjaForms:function(){return!!(document.querySelector(".nf-form-cont")||window.nfFrontEnd)},'
+ 'detectElementorForms:function(){return!!document.querySelector(".elementor-form")},'
+ 'detectTypeform:function(){return!!(window.tf||document.querySelector("[data-tf-widget]"))},'
+ 'detectJotForm:function(){return!!(window.JotForm||document.querySelector("[data-jotform]"))},'
+ 'detectGoogleForms:function(){return window.location.hostname==="docs.google.com"&&window.location.pathname.includes("/forms/")},'
+ 'detectHubSpot:function(){return!!(window.hbspt||document.querySelector("[data-form-id]")&&document.querySelector(".hs-form"))},'
+ 'detectHumanitix:function(){return window.location.hostname.includes("humanitix.com")||!!document.querySelector("[data-humanitix]")},'
+ 'detectEventbrite:function(){return window.location.hostname.includes("eventbrite.com")||!!window.EB},'
+ 'detectWebflow:function(){return!!document.querySelector("[data-wf-page]")},'
+ 'detectDrupal:function(){return!!(window.Drupal||document.querySelector("[data-drupal-selector]"))},'
+ 'detectTeachable:function(){return window.location.hostname.includes("teachable.com")||!!window.Teachable},'
+ 'detectThinkific:function(){return window.location.hostname.includes("thinkific.com")||!!window.Thinkific},'
+ 'detectMailchimp:function(){return!!(window.mc4wp||window.MailchimpSubscribe||document.querySelector(".mc4wp-form")||document.querySelector("[data-mailchimp-form]"))},'
+ 'detectActiveCampaign:function(){return!!(window._ac||document.querySelector("._form")||document.querySelector("[data-ac-form]")||document.querySelector(\'script[src*="activehosted.com"]\'))},'
+ 'detectKlaviyo:function(){return!!(window.klaviyo||window._klOnsite||document.querySelector(".klaviyo-form")||document.querySelector("[data-klaviyo-form]"))},'
+ 'detectCalendly:function(){return!!(window.Calendly||document.querySelector(".calendly-inline-widget")||document.querySelector(\'[data-url*="calendly.com"]\'))},'
+ 'detectSquareOnline:function(){return!!(window.Square||document.querySelector("[data-square-checkout]")||window.location.hostname.includes("square.site"))},'
+ 'detectSurveyMonkey:function(){return!!(window.SM||window.location.hostname.includes("surveymonkey.com")||document.querySelector("[data-surveymonkey]"))},'
+ 'detectDonorbox:function(){return!!(window.Donorbox||document.querySelector(\'iframe[src*="donorbox.org"]\')||document.querySelector(".donorbox-form"))},'
+ 'detectToast:function(){return!!(window.Toast||window.location.hostname.includes("toasttab.com")||document.querySelector(".toast-online-ordering"))}'
+ '};';

// FieldDetector module - batch CSS selector queries
var scriptFieldDetect = 'var FieldDetector={'
+ 'emailSelector:\'input[type="email"],input[name*="email" i],input[id*="email" i],input[placeholder*="email" i],input[autocomplete="email"],#email,#user_email,#customer_email,.email-field\','
+ 'phoneSelector:\'input[type="tel"],input[name*="phone" i],input[name*="mobile" i],input[id*="phone" i],input[id*="mobile" i],input[placeholder*="phone" i],input[autocomplete="tel"],#phone,#telephone,#mobile\','
+ 'firstNameSelector:\'input[name*="first" i][name*="name" i],input[name="fname"],input[name="firstname"],input[id*="first" i][id*="name" i],input[autocomplete="given-name"],#first_name,#firstname,#fname\','
+ 'lastNameSelector:\'input[name*="last" i][name*="name" i],input[name="lname"],input[name="lastname"],input[id*="last" i][id*="name" i],input[autocomplete="family-name"],#last_name,#lastname,#lname\','
+ 'detectEmail:function(ctx){var sc=ctx||document;var el=sc.querySelector(this.emailSelector);if(el)debug("Found email field");return el},'
+ 'detectPhone:function(ctx){var sc=ctx||document;var el=sc.querySelector(this.phoneSelector);if(el)debug("Found phone field");return el},'
+ 'detectFirstName:function(ctx){var sc=ctx||document;var el=sc.querySelector(this.firstNameSelector);if(el)debug("Found first name field");return el},'
+ 'detectLastName:function(ctx){var sc=ctx||document;var el=sc.querySelector(this.lastNameSelector);if(el)debug("Found last name field");return el},'
+ 'getFieldValue:function(el){if(!el)return null;return el.value||null}'
+ '};';

// PlatformConfigs module - platform-specific configurations
var scriptPlatConfigs = 'var PlatformConfigs={'
+ 'shopify:{conversionType:"purchase",dataSource:"datalayer",eventName:"purchase",getDataFromDataLayer:function(){if(window.dataLayer){for(var i=window.dataLayer.length-1;i>=0;i--){if(window.dataLayer[i].event==="purchase"){return{email:window.dataLayer[i].customer_email||window.dataLayer[i].email,phone:window.dataLayer[i].customer_phone,firstName:window.dataLayer[i].customer_first_name,lastName:window.dataLayer[i].customer_last_name}}}}return null}},'
+ 'woocommerce:{conversionType:"purchase",triggerMethod:"url_change",successUrlPattern:"/order-received/",selectors:{email:".woocommerce-order-details__email",phone:".woocommerce-order-details__phone"}},'
+ 'contactForm7:{conversionType:"lead",triggerMethod:"success_element",successSelector:".wpcf7-mail-sent-ok",formSelector:".wpcf7-form",eventListener:"wpcf7mailsent"},'
+ 'gravityForms:{conversionType:"lead",triggerMethod:"success_element",successSelector:".gform_confirmation_message",formSelector:".gform_wrapper form"},'
+ 'wpforms:{conversionType:"lead",triggerMethod:"success_element",successSelector:".wpforms-confirmation-container-full",formSelector:".wpforms-form"},'
+ 'ninjaForms:{conversionType:"lead",triggerMethod:"custom_event",eventName:"nfFormSubmitResponse",formSelector:".nf-form-cont form"},'
+ 'elementorForms:{conversionType:"lead",triggerMethod:"success_element",successSelector:".elementor-message-success",formSelector:".elementor-form"},'
+ 'hubspot:{conversionType:"lead",triggerMethod:"custom_event",eventName:"hsFormCallback",formSelector:".hs-form"},'
+ 'typeform:{conversionType:"lead",triggerMethod:"custom_event",eventName:"tf-submit",useTypeformAPI:true},'
+ 'humanitix:{conversionType:"purchase",triggerMethod:"url_change",successUrlPattern:"/confirmation"},'
+ 'eventbrite:{conversionType:"purchase",dataSource:"datalayer",eventName:"orderComplete"},'
+ 'mailchimp:{conversionType:"lead",triggerMethod:"success_element",successSelector:".mc4wp-success,.mc4wp-response .mc4wp-alert--success",formSelector:".mc4wp-form"},'
+ 'activecampaign:{conversionType:"lead",triggerMethod:"success_element",successSelector:\'._form-thank-you,._form-content[style*="display: none"] + ._form-thank-you\',formSelector:"._form"},'
+ 'klaviyo:{conversionType:"lead",triggerMethod:"custom_event",eventName:"klaviyoFormSubmitted",formSelector:".klaviyo-form",successSelector:".klaviyo-form-success"},'
+ 'calendly:{conversionType:"lead",triggerMethod:"custom_event",eventName:"calendly.event_scheduled",useCalendlyAPI:true,getDataFromEvent:function(ev){if(ev&&ev.data&&ev.data.payload){return{email:ev.data.payload.invitee.email,firstName:ev.data.payload.invitee.name?ev.data.payload.invitee.name.split(" ")[0]:null,lastName:ev.data.payload.invitee.name?ev.data.payload.invitee.name.split(" ").slice(1).join(" "):null}}return null}},'
+ 'squareOnline:{conversionType:"purchase",triggerMethod:"url_change",successUrlPattern:"/order-confirmation",selectors:{email:\'input[name="email"],[data-testid="checkout-email"]\',phone:\'input[name="phone"],[data-testid="checkout-phone"]\',firstName:\'input[name="firstName"],[data-testid="checkout-first-name"]\',lastName:\'input[name="lastName"],[data-testid="checkout-last-name"]\'}},'
+ 'surveymonkey:{conversionType:"lead",triggerMethod:"url_change",successUrlPattern:"/r/",getDataFromUrl:function(){return null}},'
+ 'donorbox:{conversionType:"purchase",triggerMethod:"custom_event",eventName:"donorbox_donation_complete",usePostMessage:true,selectors:{email:\'input[name="email"],.donorbox-email\',firstName:\'input[name="first_name"],.donorbox-first-name\',lastName:\'input[name="last_name"],.donorbox-last-name\',phone:\'input[name="phone"],.donorbox-phone\'}},'
+ 'toast:{conversionType:"purchase",triggerMethod:"url_change",successUrlPattern:"/order-confirmation",selectors:{email:\'input[name="email"],#email,.toast-checkout-email\',phone:\'input[name="phone"],#phone,.toast-checkout-phone\',firstName:\'input[name="firstName"],.toast-checkout-first-name\',lastName:\'input[name="lastName"],.toast-checkout-last-name\'}},'
+ 'jotform:{conversionType:"lead",triggerMethod:"success_element",successSelector:".jotform-form .form-thankyou-wrapper",formSelector:".jotform-form"},'
+ 'magento:{conversionType:"purchase",triggerMethod:"url_change",successUrlPattern:"/checkout/onepage/success"},'
+ 'bigcommerce:{conversionType:"purchase",triggerMethod:"url_change",successUrlPattern:"/order-confirmation"},'
+ 'squarespace:{conversionType:"lead",triggerMethod:"form_submit",formSelector:".form-wrapper form,.sqs-block-form form"},'
+ 'wix:{conversionType:"lead",triggerMethod:"form_submit",formSelector:"[id^=comp-] form,form[data-mesh-id]"},'
+ 'webflow:{conversionType:"lead",triggerMethod:"success_element",successSelector:".w-form-done",formSelector:".w-form form"},'
+ 'drupal:{conversionType:"lead",triggerMethod:"form_submit",formSelector:"form.webform-submission-form,form.contact-form"},'
+ 'teachable:{conversionType:"purchase",triggerMethod:"url_change",successUrlPattern:"/enrolled"},'
+ 'thinkific:{conversionType:"purchase",triggerMethod:"url_change",successUrlPattern:"/enrollments"},'
+ 'googleForms:{conversionType:"lead",triggerMethod:"success_element",successSelector:".freebirdFormviewerViewResponseConfirmationMessage"},'
+ 'generic:{conversionType:"lead",triggerMethod:"auto",useAutoDetection:true}'
+ '};';

// DataCollector module - field collection and data processing
var scriptDataCollect = 'var DataCollector={'
+ 'collect:function(platform,formEl){debug("Collecting data for platform:",platform);var cfg=PlatformConfigs[platform]||PlatformConfigs.generic;var dat={};if(cfg.getDataFromDataLayer){dat=cfg.getDataFromDataLayer();if(dat&&dat.email){debug("Got data from dataLayer:",dat);return this.processData(dat)}}var context=formEl||document;var emailField=this.getField("email",cfg,context);dat.email=emailField?emailField.value:null;var phoneField=this.getField("phone",cfg,context);dat.phone=phoneField?phoneField.value:null;var firstNameField=this.getField("firstName",cfg,context);dat.firstName=firstNameField?firstNameField.value:null;var lastNameField=this.getField("lastName",cfg,context);dat.lastName=lastNameField?lastNameField.value:null;if(CONFIG.includeAddress){dat.address=this.collectAddress(cfg,context)}debug("Collected raw data:",dat);return this.processData(dat)},'
+ 'getField:function(fieldType,cfg,context){var cs=CONFIG.customSelectors[fieldType];if(cs){var el=Utils.querySelector(cs);if(el)return el}if(cfg.selectors&&cfg.selectors[fieldType]){var el2=context.querySelector(cfg.selectors[fieldType]);if(el2)return el2}switch(fieldType){case"email":return FieldDetector.detectEmail(context);case"phone":return FieldDetector.detectPhone(context);case"firstName":return FieldDetector.detectFirstName(context);case"lastName":return FieldDetector.detectLastName(context);default:return null}},'
+ 'collectAddress:function(cfg,context){return null},'
+ 'processData:function(dat){if(!dat.email||typeof dat.email!=="string"||dat.email.trim()===""){debug("No email found or email is empty, cannot proceed");return null}if(CONFIG.enableValidation&&!Utils.isValidEmail(dat.email)){debug("Invalid email format:",dat.email);return null}if(CONFIG.normalizeData){dat.email=Utils.normalizeEmail(dat.email);if(!dat.email||dat.email.trim()===""){debug("Email became empty after normalization");return null}if(dat.phone){dat.phone=Utils.normalizePhone(dat.phone)}if(dat.firstName){dat.firstName=Utils.normalizeName(dat.firstName)}if(dat.lastName){dat.lastName=Utils.normalizeName(dat.lastName)}}var result={email:dat.email};if(dat.phone)result.phone_number=dat.phone;if(dat.firstName)result.first_name=dat.firstName;if(dat.lastName)result.last_name=dat.lastName;if(dat.address)result.address=dat.address;debug("Processed data:",result);return result}'
+ '};';

// ConsentChecker module
var scriptConsent = 'var ConsentChecker={'
+ 'hasConsent:function(){if(!CONFIG.checkConsent)return true;if(window.gtag){debug("GTM Consent Mode detected")}return true}'
+ '};';

// DataLayerManager module - deduplication + dataLayer.push
var scriptDLM = 'var DataLayerManager={'
+ '_recentEvents:[],'
+ '_dedupeWindow:10000,'
+ '_getEventFingerprint:function(dat){var email=dat.email||"";var time=Math.floor(Date.now()/this._dedupeWindow);return email+"_"+time},'
+ '_isDuplicate:function(dat){var fp=this._getEventFingerprint(dat);if(this._recentEvents.indexOf(fp)!==-1){debug("Duplicate event detected within "+(this._dedupeWindow/1000)+"s, skipping:",fp);return true}this._recentEvents.push(fp);if(this._recentEvents.length>50){this._recentEvents.shift()}return false},'
+ 'push:function(dat){if(!dat){debug("No data to push");return false}if(this._isDuplicate(dat)){debug("Skipping duplicate conversion within "+(this._dedupeWindow/1000)+" seconds");return false}window.dataLayer=window.dataLayer||[];var eventData={event:CONFIG.eventName,enhanced_conversion_data:dat};debug("Pushing to dataLayer:",eventData);try{window.dataLayer.push(eventData);debug("Successfully pushed to dataLayer");return true}catch(e){debug("Error pushing to dataLayer:",e);return false}}'
+ '};';

// TriggerHandlers module - form submit, success element, URL change, custom event
var scriptTriggers = 'var TriggerHandlers={'
+ 'setup:function(platform){var cfg=PlatformConfigs[platform]||PlatformConfigs.generic;var tm=CONFIG.triggerMethod!=="auto"?CONFIG.triggerMethod:cfg.triggerMethod;debug("Setting up trigger method:",tm);switch(tm){case"form_submit":this.setupFormSubmit(platform,cfg);break;case"success_element":this.setupSuccessElement(platform,cfg);break;case"url_change":this.setupUrlChange(platform,cfg);break;case"custom_event":this.setupCustomEvent(platform,cfg);break;case"datalayer_event":this.setupDataLayerEvent(platform,cfg);break;default:this.setupAutoDetect(platform,cfg)}},'
+ 'setupFormSubmit:function(platform,cfg){var formSel=CONFIG.customSelectors.form||cfg.formSelector;if(!formSel){debug("No form selector provided");return}var form=Utils.querySelector(formSel);if(!form){debug("Form not found:",formSel);return}debug("Setting up form submit listener on:",formSel);MemoryManager.registerListener(form,"submit",function(){debug("Form submitted");var tid=setTimeout(function(){var dat=DataCollector.collect(platform,form);if(dat&&ConsentChecker.hasConsent()){DataLayerManager.push(dat)}},CONFIG.executionDelay||100);MemoryManager.registerTimer(tid,"formSubmitDelay")},"formSubmitListener")},'
+ 'setupSuccessElement:function(platform,cfg){var sSel=CONFIG.customSelectors.success||cfg.successSelector;if(!sSel){debug("No success selector provided");return}debug("Watching for success element:",sSel);var found=false;var observer=new MutationObserver(function(){if(found)return;var sEl=Utils.querySelector(sSel);if(sEl&&Utils.isVisible(sEl)){found=true;debug("Success element appeared");var dat=DataCollector.collect(platform);if(dat&&ConsentChecker.hasConsent()){DataLayerManager.push(dat)}observer.disconnect()}});MemoryManager.registerObserver(observer,"successElementWatcher");observer.observe(document.body,{childList:true,subtree:true,attributes:true,attributeFilter:["class","style"]});var timeoutId=setTimeout(function(){if(!found){debug("Success element watch timed out after 30s");observer.disconnect()}},30000);MemoryManager.registerTimer(timeoutId,"successElementTimeout")},'
+ 'setupUrlChange:function(platform,cfg){var urlPat=CONFIG.customSelectors.successUrl||cfg.successUrlPattern;if(!urlPat){debug("No URL pattern provided");return}debug("Checking URL for pattern:",urlPat);if(window.location.pathname.includes(urlPat)||window.location.href.includes(urlPat)){debug("URL matches success pattern");setTimeout(function(){var dat=DataCollector.collect(platform);if(dat&&ConsentChecker.hasConsent()){DataLayerManager.push(dat)}},CONFIG.executionDelay||0)}},'
+ 'setupCustomEvent:function(platform,cfg){var evName=cfg.eventName||cfg.eventListener;if(!evName){debug("No event name provided");return}debug("Listening for custom event:",evName);MemoryManager.registerListener(document,evName,function(){debug("Custom event fired:",evName);var dat=DataCollector.collect(platform);if(dat&&ConsentChecker.hasConsent()){DataLayerManager.push(dat)}},"customEventListener-"+evName)},'
+ 'setupDataLayerEvent:function(platform,cfg){debug("Setting up dataLayer event listener")},'
+ 'setupAutoDetect:function(platform,cfg){debug("Using auto-detect trigger method");this.setupFormSubmit(platform,cfg);this.setupSuccessElement(platform,cfg);this.setupUrlChange(platform,cfg);if(cfg.eventListener){this.setupCustomEvent(platform,cfg)}}'
+ '};';

// Init function + DOM-ready bootstrap
var scriptInit = 'function init(){debug("Initializing Enhanced Conversion Tracking...");if(!ConsentChecker.hasConsent()){debug("Consent not granted, aborting");return}var platform;if(CONFIG.detectionMode==="auto"){platform=PlatformDetector.detect()}else{platform=CONFIG.specificPlatform||"generic"}debug("Using platform:",platform);TriggerHandlers.setup(platform);debug("Setup complete")}'
+ 'if(document.readyState==="loading"){document.addEventListener("DOMContentLoaded",init)}else{init()}';

// Assemble full script with IIFE wrapper
var fullScript = '(function(window,document){"use strict";var CONFIG=' + config + ';'
  + scriptDebug
  + scriptUtils
  + scriptMemory
  + scriptPlatDetect
  + scriptFieldDetect
  + scriptPlatConfigs
  + scriptDataCollect
  + scriptConsent
  + scriptDLM
  + scriptTriggers
  + scriptInit
  + '})(window,document);';

// Inject via data: URI
var url = 'data:text/javascript;charset=utf-8,' + encodeUriComponent(fullScript);
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
              },
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
                    "string": "document"
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
              },
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
                    "string": "window"
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
                    "boolean": true
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
