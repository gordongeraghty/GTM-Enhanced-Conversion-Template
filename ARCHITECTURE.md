# Architecture

This document explains how the template works internally. Useful if you're adding platforms, debugging issues, or just curious.

## Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                     GTM Tag Execution                           │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  1. Initialize    2. Detect       3. Setup         4. Collect  │
│  ┌─────────┐     ┌─────────┐     ┌─────────┐     ┌─────────┐  │
│  │ Config  │ ──► │Platform │ ──► │Triggers │ ──► │  Data   │  │
│  │ + Utils │     │Detector │     │         │     │         │  │
│  └─────────┘     └─────────┘     └─────────┘     └─────────┘  │
│                                                       │         │
│                                                       ▼         │
│                                               5. Push to        │
│                                               dataLayer         │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

## Core modules

The template has six main modules:

### 1. Utils

Basic helper functions used everywhere else.

```
Utils
├── validateEmail(email)      - Check email format (requires valid TLD)
├── normalizePhone(phone)     - Convert to E.164 format (+1234567890)
├── normalizeEmail(email)     - Lowercase and trim
├── normalizeName(name)       - Trim whitespace
├── querySelector(selector)   - Safe DOM query (catches errors)
├── querySelectorAll(selector)- Safe DOM query for multiple elements
├── isVisible(element)        - Check if element is displayed
└── waitForElement(selector)  - Poll for element with timeout
```

Email validation uses a cached regex pattern. The pattern requires a valid TLD (minimum 2 characters) so `test@example` fails but `test@example.com` passes.

Phone normalization strips non-digits and adds country code. 10-digit numbers assume US/Canada (+1). Longer numbers get a + prefix.

### 2. MemoryManager

Prevents memory leaks by tracking resources that need cleanup.

```
MemoryManager
├── observers[]               - MutationObserver instances
├── listeners[]               - Event listeners (element, event, handler)
├── timers[]                  - setTimeout/setInterval IDs
├── registerObserver()        - Track an observer for cleanup
├── registerListener()        - Track a listener for cleanup
├── registerTimer()           - Track a timer for cleanup
├── cleanup()                 - Disconnect/remove everything
└── setupAutoCleanup()        - Hook into beforeunload/pagehide
```

This matters for single-page applications. Without cleanup, a MutationObserver watching for form success messages would keep running forever, even after the user navigates away from the page.

The module hooks into `beforeunload` and `pagehide` events to clean up automatically.

### 3. ConsentChecker

Checks GTM Consent Mode before collecting data.

```
ConsentChecker
└── hasConsent()              - Returns true if ad_storage is granted
```

If the user hasn't granted consent for advertising, the template won't collect or push any data. This is checked right before the dataLayer push.

### 4. PlatformDetector

Figures out what platform the page is using.

```
PlatformDetector
├── detect()                  - Run detection, return platform name
├── detectContactForm7()      - Check for CF7 markers
├── detectGravityForms()      - Check for GF markers
├── detectShopify()           - Check for Shopify markers
├── detectWooCommerce()       - Check for WC markers
├── detectHubSpot()           - Check for HS markers
├── ... (20+ more platforms)
└── Returns: platform name or 'generic'
```

Detection uses a few signals:
- Global JavaScript objects (`window.wpcf7`, `window.Shopify`, etc.)
- DOM elements with platform-specific classes (`.wpcf7-form`, `.gform_wrapper`)
- Meta tags or data attributes

The `detect()` method checks platforms in order of popularity. Most websites use WordPress forms or Shopify, so those run first. Once a match is found, it returns immediately instead of checking all 20+ platforms.

### 5. PlatformConfigs

Contains platform-specific settings.

```
PlatformConfigs
├── contactForm7
│   ├── fieldSelectors
│   │   ├── email: '.wpcf7-form input[type="email"]'
│   │   ├── phone: '.wpcf7-form input[type="tel"]'
│   │   ├── firstName: '.wpcf7-form input[name*="first"]'
│   │   └── lastName: '.wpcf7-form input[name*="last"]'
│   └── triggers
│       └── successSelector: '.wpcf7-mail-sent-ok'
│
├── gravityForms
│   ├── fieldSelectors
│   │   └── ... (similar structure)
│   └── triggers
│       └── successSelector: '.gform_confirmation_message'
│
├── shopify
│   ├── fieldSelectors
│   │   └── ... (checkout field selectors)
│   └── triggers
│       └── urlPattern: '/thank_you'
│
└── ... (more platforms)
```

Each platform config has:
- **fieldSelectors**: CSS selectors to find email, phone, name fields
- **triggers**: How to detect form completion (success message, URL change, or form submit event)

### 6. DataCollector

Gathers field values and formats them.

```
DataCollector
├── collectFromForm(platform)   - Get data from a specific platform
├── collectGeneric()            - Fallback for unknown platforms
├── findFieldValue(selectors)   - Try multiple selectors until one works
└── buildPayload(data)          - Format data for dataLayer
```

Collection happens after the trigger fires. The collector uses the platform's field selectors to find inputs, gets their values, validates/normalizes them, and builds the payload.

## Execution flow

```
┌──────────────────────────────────────────────────────────────────┐
│ 1. GTM fires tag (page load or custom trigger)                   │
└──────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌──────────────────────────────────────────────────────────────────┐
│ 2. Read template configuration                                   │
│    - Detection mode (auto or manual)                             │
│    - Conversion type (lead or purchase)                          │
│    - Debug mode (on or off)                                      │
│    - Custom selectors (if any)                                   │
└──────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌──────────────────────────────────────────────────────────────────┐
│ 3. Detect platform                                               │
│    Auto mode: PlatformDetector.detect()                          │
│    Manual mode: Use configured platform                          │
└──────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌──────────────────────────────────────────────────────────────────┐
│ 4. Setup trigger for detected platform                           │
│                                                                  │
│    Success message platforms (CF7, Gravity Forms):               │
│    - Create MutationObserver watching for success element        │
│    - Register observer with MemoryManager                        │
│    - Set 30-second timeout to auto-disconnect                    │
│                                                                  │
│    URL change platforms (Shopify thank you page):                │
│    - Check current URL for pattern match                         │
│    - Or watch for URL changes via History API                    │
│                                                                  │
│    Form submit platforms (generic):                              │
│    - Attach submit event listener to form                        │
│    - Register listener with MemoryManager                        │
└──────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌──────────────────────────────────────────────────────────────────┐
│ 5. Wait for trigger to fire                                      │
│    (user submits form, success message appears, etc.)            │
└──────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌──────────────────────────────────────────────────────────────────┐
│ 6. Collect data                                                  │
│    - Find fields using platform selectors                        │
│    - Extract values                                              │
│    - Validate email format                                       │
│    - Normalize phone to E.164                                    │
│    - Trim names                                                  │
│    - Skip empty/invalid fields                                   │
└──────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌──────────────────────────────────────────────────────────────────┐
│ 7. Check consent                                                 │
│    - ConsentChecker.hasConsent()                                 │
│    - If no consent, stop here                                    │
└──────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌──────────────────────────────────────────────────────────────────┐
│ 8. Push to dataLayer                                             │
│    {                                                             │
│      event: 'enhanced_conversion',                               │
│      enhanced_conversion_data: {                                 │
│        email: 'user@example.com',                                │
│        phone_number: '+1234567890',                              │
│        first_name: 'John',                                       │
│        last_name: 'Doe'                                          │
│      }                                                           │
│    }                                                             │
└──────────────────────────────────────────────────────────────────┘
                                │
                                ▼
┌──────────────────────────────────────────────────────────────────┐
│ 9. Google Ads conversion tag reads enhanced_conversion_data      │
│    and sends to Google Ads with the conversion                   │
└──────────────────────────────────────────────────────────────────┘
```

## Platform detection logic

Detection runs checks in order of likelihood:

```
1. WordPress forms (most common for leads)
   ├── Contact Form 7    → window.wpcf7 or .wpcf7-form
   ├── Gravity Forms     → window.gform or .gform_wrapper
   └── WPForms           → window.wpforms or .wpforms-form

2. E-commerce (most common for purchases)
   ├── Shopify           → window.Shopify or shopify-section
   └── WooCommerce       → window.wc or .woocommerce

3. Other WordPress forms
   ├── Ninja Forms       → window.nfForms or .nf-form-cont
   └── Elementor         → .elementor-form

4. Marketing automation
   └── HubSpot           → window.hbspt or .hs-form

5. Standalone forms
   ├── Typeform          → window.typeformEmbed or .typeform-embed
   └── JotForm           → window.JotForm or .jotform-form

6. More e-commerce
   ├── Magento           → window.Mage or .magento
   ├── BigCommerce       → window.BCData or .bigcommerce
   └── ... more

7. Events and other platforms
   └── ... more

8. Fallback
   └── generic           → if nothing matches
```

The function returns as soon as it finds a match. On a Contact Form 7 site, only the first check runs. On an unknown platform, all checks run and it falls back to generic.

## Trigger types

Different platforms need different trigger mechanisms:

### Success message observer

Used by: Contact Form 7, Gravity Forms, WPForms, most WordPress forms

```javascript
// Watch for success message to appear
const observer = new MutationObserver(function(mutations) {
  const success = document.querySelector('.wpcf7-mail-sent-ok');
  if (success && Utils.isVisible(success)) {
    collectAndPush();
    observer.disconnect();
  }
});

observer.observe(document.body, { childList: true, subtree: true });
MemoryManager.registerObserver(observer, 'cf7-success');

// Auto-disconnect after 30 seconds to prevent memory leaks
setTimeout(() => observer.disconnect(), 30000);
```

### URL pattern matching

Used by: Shopify (thank you page), some e-commerce checkouts

```javascript
// Check if we're on the thank you page
if (window.location.pathname.includes('/thank_you')) {
  collectAndPush();
}
```

### Form submit event

Used by: Generic forms, some platforms without success messages

```javascript
form.addEventListener('submit', function(e) {
  // Wait for form to actually submit
  setTimeout(collectAndPush, 200);
});
```

## Field detection

Finding the right field involves trying multiple selectors:

```javascript
// Platform config for Contact Form 7
fieldSelectors: {
  email: [
    '.wpcf7-form input[type="email"]',
    '.wpcf7-form input[name*="email"]',
    '.wpcf7-form input[name*="mail"]'
  ]
}

// Collector tries each selector until one returns a value
function findFieldValue(selectors) {
  for (const selector of selectors) {
    const element = document.querySelector(selector);
    if (element && element.value) {
      return element.value;
    }
  }
  return null;
}
```

For generic forms, the collector tries common patterns:

```javascript
// Generic email field detection
'input[type="email"]',
'input[name="email"]',
'input[name*="email"]',
'input[id*="email"]',
'input[placeholder*="email" i]'
```

## Data validation

Before pushing to dataLayer:

**Email validation**
```javascript
// Must have @ and valid TLD (2+ characters after last dot)
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/;
if (!emailRegex.test(email.trim().toLowerCase())) {
  return null; // Invalid, don't include
}
```

**Phone normalization**
```javascript
// Strip non-digits
let cleaned = phone.replace(/\D/g, '');

// Add country code
if (cleaned.length === 10) {
  cleaned = '+1' + cleaned;  // Assume US/Canada
} else {
  cleaned = '+' + cleaned;
}

// Must be at least 10 digits
if (cleaned.length < 10) {
  return null;
}
```

**Empty value rejection**
```javascript
// Reject empty strings and whitespace-only values
if (!value || !value.trim()) {
  return null;
}
```

## Adding a new platform

1. Add detection method to PlatformDetector:
```javascript
detectMyPlatform: function() {
  if (window.MyPlatformGlobal) return true;
  if (document.querySelector('.myplatform-form')) return true;
  return false;
}
```

2. Add to detect() in appropriate position:
```javascript
if (this.detectMyPlatform()) return 'myplatform';
```

3. Add config to PlatformConfigs:
```javascript
myplatform: {
  fieldSelectors: {
    email: '.myplatform-form input[type="email"]',
    phone: '.myplatform-form input[type="tel"]',
    firstName: '.myplatform-form input[name="first_name"]',
    lastName: '.myplatform-form input[name="last_name"]'
  },
  triggers: {
    successSelector: '.myplatform-success'
  }
}
```

4. Create test file in Test Files/ directory

5. Test manually with Debug Mode enabled

## File structure

```
GTM-Enhanced-Conversion-Template/
├── template.tpl              # The actual GTM template
├── README.md                 # Setup guide
├── ARCHITECTURE.md           # This file
├── CHANGELOG.md              # Version history
├── CONTRIBUTING.md           # How to contribute
├── SECURITY.md               # Security info
├── CODE_OF_CONDUCT.md        # Community guidelines
├── LICENSE                   # MIT license
├── TEMPLATE_GUIDE.md         # Detailed configuration
├── PLATFORM_SUPPORT.md       # All platforms with selectors
├── .github/
│   └── ISSUE_TEMPLATE/       # Bug report, feature request templates
└── Test Files/
    ├── test-generic-form.html
    ├── test-contact-form-7.html
    ├── test-gravity-forms.html
    └── README.md
```

## Debugging

Enable Debug Mode in the template configuration. Console output shows:

```
[EC Tracking] Enhanced Conversion Tracking initialized
[EC Tracking] Detection mode: auto
[EC Tracking] Starting platform detection...
[EC Tracking] Detected platform: contactForm7
[EC Tracking] Setting up trigger for: contactForm7
[EC Tracking] Registered observer: cf7-success
[EC Tracking] Success message detected
[EC Tracking] Collecting data...
[EC Tracking] Found email: user@example.com
[EC Tracking] Found phone: +1234567890
[EC Tracking] Checking consent...
[EC Tracking] Consent granted
[EC Tracking] Pushing to dataLayer: {email: "user@example.com", phone_number: "+1234567890"}
```

If something isn't working:
- Check that the platform was detected correctly
- Check that the trigger is set up (observer registered, listener attached)
- Check that fields were found
- Check that consent was granted
- Check for any JavaScript errors
