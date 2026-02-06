# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2026-01-29

### Added

**8 new platform integrations:**

- **Mailchimp** - Marketing automation forms (MC4WP plugin)
- **ActiveCampaign** - Marketing automation embedded forms
- **Klaviyo** - E-commerce email marketing forms
- **Calendly** - Appointment scheduling (via postMessage events)
- **Square Online** - E-commerce checkout
- **SurveyMonkey** - Survey completions
- **Donorbox** - Donation form processing
- **Toast** - Restaurant online ordering

**New platform categories:**
- Booking & Appointments
- Survey & Quiz
- Donations & Fundraising
- Restaurant & Food Ordering

**Test files for all new platforms:**
- test-mailchimp.html
- test-activecampaign.html
- test-klaviyo.html
- test-calendly.html
- test-square-online.html
- test-surveymonkey.html
- test-donorbox.html
- test-toast.html
- test-all-platforms.html (comprehensive test suite)

### Changed

- Updated template description to include new platforms
- Added "Restaurant & Food Ordering" category to manual platform selection

---

## [1.0.0] - 2026-01-29

Initial public release.

### Features

**Platform detection**
- Auto-detects 30+ platforms including Shopify, WooCommerce, Contact Form 7, Gravity Forms, HubSpot, and many others
- Falls back to generic form handling when platform isn't recognized
- Detection runs in order of popularity to find matches faster

**Data collection**
- Captures email, phone, first name, last name, and address fields
- Works with both form submissions and success message appearances
- Handles AJAX forms and single-page applications

**Validation and formatting**
- Email validation with proper TLD checking
- Phone normalization to E.164 format (+1234567890)
- Trims whitespace from all fields
- Rejects empty or whitespace-only values

**Memory management**
- Tracks all MutationObservers, event listeners, and timers
- Cleans up automatically on page unload
- Prevents memory leaks on long-running pages

**Configuration options**
- Auto-detect or manual platform selection
- Lead or purchase conversion types
- Custom CSS selectors for any field
- Debug mode with console logging
- Adjustable execution delay

### Platforms supported

**E-commerce:** Shopify, WooCommerce, Magento, BigCommerce, Squarespace Commerce, Wix, PrestaShop, OpenCart, Volusion, 3dcart

**WordPress forms:** Contact Form 7, Gravity Forms, WPForms, Ninja Forms, Elementor Forms, Fluent Forms, Formidable Forms, Forminator, WS Form, Happy Forms

**Standalone forms:** Typeform, JotForm, Google Forms, Formstack, Wufoo, Cognito Forms, FormAssembly, 123FormBuilder

**Marketing automation:** HubSpot, Marketo, Pardot, ActiveCampaign, Mailchimp, Constant Contact, GetResponse, ConvertKit

**Events:** Eventbrite, Humanitix, Ticketmaster, Calendly, Acuity Scheduling

**Learning:** Teachable, Thinkific, Kajabi, LearnDash

**CMS:** Webflow, Drupal, Joomla, Ghost

### Documentation

- README with setup guide
- Template guide with all configuration options
- Platform support matrix with detection methods
- Test files for manual testing
- Contributing guidelines
- Security policy

[1.1.0]: https://github.com/gordongeraghty/GTM-Enhanced-Conversion-Template/releases/tag/v1.1.0
[1.0.0]: https://github.com/gordongeraghty/GTM-Enhanced-Conversion-Template/releases/tag/v1.0.0
