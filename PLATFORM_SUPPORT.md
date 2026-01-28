# Platform Support Matrix

This document provides detailed information about each supported platform, including detection methods, field patterns, and configuration requirements.

## Platform Categories

- [E-commerce Platforms](#e-commerce-platforms)
- [WordPress Form Plugins](#wordpress-form-plugins)
- [Standalone Form Builders](#standalone-form-builders)
- [Marketing Automation](#marketing-automation)
- [CMS Platforms](#cms-platforms)
- [Event & Ticketing](#event--ticketing)
- [Learning & Course Platforms](#learning--course-platforms)
- [Booking & Appointments](#booking--appointments)
- [Survey & Quiz](#survey--quiz)
- [Donations & Fundraising](#donations--fundraising)
- [Restaurant & Food Ordering](#restaurant--food-ordering)

---

## E-commerce Platforms

### Shopify

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.Shopify` object, `ShopifyAnalytics` |
| **Conversion Type** | Purchase |
| **Data Source** | DataLayer |
| **Event Name** | `purchase` |
| **Fields Available** | Email, Phone, First Name, Last Name, Address |
| **Special Notes** | Reads from Shopify's built-in dataLayer |
| **Tested** | ✅ Yes |

**Configuration:**
- Detection Mode: Auto-Detect
- No custom selectors needed
- Works on checkout thank-you page

---

### WooCommerce

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `.woocommerce` class, `wc_add_to_cart_params` |
| **Conversion Type** | Purchase |
| **Trigger Method** | URL Change |
| **Success URL** | `/order-received/` |
| **Fields Available** | Email, Phone (from order page) |
| **Special Notes** | Best used on order confirmation page |
| **Tested** | ✅ Yes |

**Configuration:**
- Detection Mode: Auto-Detect
- Trigger: Page View on URL contains "order-received"

---

### Magento / Adobe Commerce

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.Magento` object, `[data-mage-init]` |
| **Conversion Type** | Purchase |
| **Trigger Method** | URL Change or DataLayer |
| **Success URL** | `/checkout/onepage/success` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Special Notes** | May vary by Magento version |
| **Tested** | ⚠️ Needs testing |

---

### BigCommerce

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.BCData` object |
| **Conversion Type** | Purchase |
| **Data Source** | DataLayer or Order Confirmation |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Tested** | ⚠️ Needs testing |

---

### Squarespace Commerce

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.Static.SQUARESPACE_CONTEXT` |
| **Conversion Type** | Purchase |
| **Trigger Method** | URL Change |
| **Success URL** | `/order-confirmed` |
| **Fields Available** | Email |
| **Tested** | ⚠️ Needs testing |

---

### Wix eCommerce

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.wixBiSession`, `[data-wix-site]` |
| **Conversion Type** | Purchase |
| **Trigger Method** | URL Change or Custom Event |
| **Fields Available** | Email, Phone |
| **Special Notes** | Wix has built-in tracking; may need custom integration |
| **Tested** | ⚠️ Needs testing |

---

### Square Online

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.Square`, `[data-square-checkout]`, `square.site` domain |
| **Conversion Type** | Purchase |
| **Trigger Method** | URL Change |
| **Success URL** | `/order-confirmation` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Special Notes** | Works on Square Online storefronts |
| **Tested** | ⚠️ Needs testing |

**Configuration:**
- Detection Mode: Auto-Detect
- Trigger: Page View on URL contains "order-confirmation"

---

## WordPress Form Plugins

### Contact Form 7

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `.wpcf7-form` class, `window.wpcf7` |
| **Conversion Type** | Lead |
| **Trigger Method** | Custom Event: `wpcf7mailsent` |
| **Form Selector** | `.wpcf7-form` |
| **Success Selector** | `.wpcf7-mail-sent-ok` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Field Patterns** | Standard `<input>` with names like `your-email`, `your-name` |
| **Tested** | ✅ Yes |

**Configuration:**
- Detection Mode: Auto-Detect
- Automatically listens for CF7 success event
- Works with all CF7 forms on page

---

### Gravity Forms

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `.gform_wrapper` class, `window.gform` |
| **Conversion Type** | Lead |
| **Trigger Method** | Success Element |
| **Form Selector** | `.gform_wrapper form` |
| **Success Selector** | `.gform_confirmation_message` |
| **Fields Available** | Email, Phone, First Name, Last Name, Address |
| **Field Patterns** | IDs like `input_1_2` (form ID _ field ID) |
| **Tested** | ✅ Yes |

---

### WPForms

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `.wpforms-form` class |
| **Conversion Type** | Lead |
| **Trigger Method** | Success Element |
| **Form Selector** | `.wpforms-form` |
| **Success Selector** | `.wpforms-confirmation-container-full` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Tested** | ✅ Yes |

---

### Ninja Forms

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `.nf-form-cont` class, `window.nfFrontEnd` |
| **Conversion Type** | Lead |
| **Trigger Method** | Custom Event: `nfFormSubmitResponse` |
| **Form Selector** | `.nf-form-cont form` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Tested** | ⚠️ Needs testing |

---

### Elementor Forms

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `.elementor-form` class |
| **Conversion Type** | Lead |
| **Trigger Method** | Success Element |
| **Form Selector** | `.elementor-form` |
| **Success Selector** | `.elementor-message-success` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Tested** | ✅ Yes |

---

### Fluent Forms

| Property | Value |
|----------|-------|
| **Auto-Detection** | ⚠️ Generic detection |
| **Detection Method** | `.fluentform` class |
| **Conversion Type** | Lead |
| **Trigger Method** | Success Element |
| **Form Selector** | `.fluentform` |
| **Success Selector** | `.ff-message-success` |
| **Tested** | ⚠️ Needs testing |

---

### Formidable Forms

| Property | Value |
|----------|-------|
| **Auto-Detection** | ⚠️ Generic detection |
| **Detection Method** | `.frm_forms` class |
| **Conversion Type** | Lead |
| **Trigger Method** | Success Element |
| **Success Selector** | `.frm_message` |
| **Tested** | ⚠️ Needs testing |

---

## Standalone Form Builders

### Typeform

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.tf`, `[data-tf-widget]` |
| **Conversion Type** | Lead |
| **Trigger Method** | Custom Event: `tf-submit` |
| **Data Source** | Typeform API |
| **Fields Available** | Email, Phone, Name (depends on form) |
| **Special Notes** | Works with embedded and popup forms |
| **Tested** | ⚠️ Needs testing |

---

### JotForm

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.JotForm`, `[data-jotform]` |
| **Conversion Type** | Lead |
| **Trigger Method** | Form Submit or Success Element |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Tested** | ⚠️ Needs testing |

---

### Google Forms

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes (on Google's domain) |
| **Detection Method** | Domain: `docs.google.com/forms/` |
| **Conversion Type** | Lead |
| **Trigger Method** | URL Change (redirect to confirmation) |
| **Special Notes** | Limited - only works if form redirects with URL params |
| **Tested** | ⚠️ Limited support |

---

## Marketing Automation

### HubSpot Forms

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.hbspt`, `.hs-form` |
| **Conversion Type** | Lead |
| **Trigger Method** | Custom Event: `hsFormCallback` |
| **Form Selector** | `.hs-form` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Special Notes** | Works with HubSpot's native events |
| **Tested** | ✅ Yes |

---

### Marketo

| Property | Value |
|----------|-------|
| **Auto-Detection** | ⚠️ Needs implementation |
| **Detection Method** | Marketo form classes/IDs |
| **Conversion Type** | Lead |
| **Trigger Method** | Marketo form success callback |
| **Tested** | ❌ Not yet implemented |

---

### Pardot (Salesforce)

| Property | Value |
|----------|-------|
| **Auto-Detection** | ⚠️ Needs implementation |
| **Detection Method** | Pardot form handlers |
| **Conversion Type** | Lead |
| **Tested** | ❌ Not yet implemented |

---

### Mailchimp

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.mc4wp`, `window.MailchimpSubscribe`, `.mc4wp-form` |
| **Conversion Type** | Lead |
| **Trigger Method** | Success Element |
| **Form Selector** | `.mc4wp-form` |
| **Success Selector** | `.mc4wp-success`, `.mc4wp-alert--success` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Special Notes** | Works with MC4WP (Mailchimp for WordPress) plugin |
| **Tested** | ⚠️ Needs testing |

**Configuration:**
- Detection Mode: Auto-Detect
- Automatically detects success message appearance

---

### ActiveCampaign

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window._ac`, `._form`, `[data-ac-form]` |
| **Conversion Type** | Lead |
| **Trigger Method** | Success Element |
| **Form Selector** | `._form` |
| **Success Selector** | `._form-thank-you` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Special Notes** | Works with ActiveCampaign embedded forms |
| **Tested** | ⚠️ Needs testing |

**Configuration:**
- Detection Mode: Auto-Detect
- Form hides and thank you message appears on success

---

### Klaviyo

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.klaviyo`, `window._klOnsite`, `.klaviyo-form` |
| **Conversion Type** | Lead |
| **Trigger Method** | Custom Event |
| **Event Name** | `klaviyoFormSubmitted` |
| **Form Selector** | `.klaviyo-form` |
| **Success Selector** | `.klaviyo-form-success` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Special Notes** | Popular for e-commerce email marketing |
| **Tested** | ⚠️ Needs testing |

**Configuration:**
- Detection Mode: Auto-Detect
- Listens for Klaviyo form submission events

---

## Event & Ticketing

### Humanitix

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | Domain contains `humanitix.com` |
| **Conversion Type** | Purchase |
| **Trigger Method** | URL Change |
| **Success URL** | `/confirmation` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Tested** | ⚠️ Needs testing |

---

### Eventbrite

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | Domain or `window.EB` |
| **Conversion Type** | Purchase |
| **Data Source** | DataLayer event: `orderComplete` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Tested** | ⚠️ Needs testing |

---

## Learning & Course Platforms

### Teachable

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | Domain or `window.Teachable` |
| **Conversion Type** | Purchase |
| **Trigger Method** | URL Change |
| **Tested** | ⚠️ Needs testing |

---

### Thinkific

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | Domain or `window.Thinkific` |
| **Conversion Type** | Purchase |
| **Trigger Method** | URL Change |
| **Tested** | ⚠️ Needs testing |

---

## CMS Platforms

### Webflow

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `[data-wf-page]` attribute |
| **Conversion Type** | Lead or Purchase |
| **Trigger Method** | Form Submit or Success Element |
| **Fields Available** | Depends on form configuration |
| **Tested** | ⚠️ Needs testing |

---

### Drupal

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.Drupal`, `[data-drupal-selector]` |
| **Conversion Type** | Lead |
| **Trigger Method** | Form Submit |
| **Form Selector** | `[data-drupal-selector*="form"]` |
| **Tested** | ⚠️ Needs testing |

---

## Booking & Appointments

### Calendly

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.Calendly`, `.calendly-inline-widget`, `[data-url*="calendly.com"]` |
| **Conversion Type** | Lead |
| **Trigger Method** | Custom Event |
| **Event Name** | `calendly.event_scheduled` |
| **Fields Available** | Email, Name (parsed to First/Last) |
| **Special Notes** | Listens for Calendly's postMessage events |
| **Tested** | ⚠️ Needs testing |

**Configuration:**
- Detection Mode: Auto-Detect
- Calendly fires events via window.postMessage when a meeting is scheduled
- Name is automatically split into first and last name

---

## Survey & Quiz

### SurveyMonkey

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.SM`, `surveymonkey.com` domain, `[data-surveymonkey]` |
| **Conversion Type** | Lead |
| **Trigger Method** | URL Change |
| **Success URL** | `/r/` (completion page) |
| **Fields Available** | Email, Phone, First Name, Last Name (if captured in survey) |
| **Special Notes** | Captures survey completion; field data depends on survey questions |
| **Tested** | ⚠️ Needs testing |

**Configuration:**
- Detection Mode: Auto-Detect
- Fires on survey completion page

---

## Donations & Fundraising

### Donorbox

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.Donorbox`, `iframe[src*="donorbox.org"]`, `.donorbox-form` |
| **Conversion Type** | Purchase (Donation) |
| **Trigger Method** | Custom Event |
| **Event Name** | `donorbox_donation_complete` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Special Notes** | Works with embedded Donorbox forms; listens for postMessage events |
| **Tested** | ⚠️ Needs testing |

**Configuration:**
- Detection Mode: Auto-Detect
- Donorbox uses iframe embeds that communicate via postMessage

---

## Restaurant & Food Ordering

### Toast

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Yes |
| **Detection Method** | `window.Toast`, `toasttab.com` domain, `.toast-online-ordering` |
| **Conversion Type** | Purchase |
| **Trigger Method** | URL Change |
| **Success URL** | `/order-confirmation` |
| **Fields Available** | Email, Phone, First Name, Last Name |
| **Special Notes** | Works with Toast Tab online ordering system |
| **Tested** | ⚠️ Needs testing |

**Configuration:**
- Detection Mode: Auto-Detect
- Fires on order confirmation page

---

## Generic / Custom Forms

### Generic HTML Forms

| Property | Value |
|----------|-------|
| **Auto-Detection** | ✅ Fallback |
| **Detection Method** | Used when no specific platform detected |
| **Conversion Type** | Configurable |
| **Trigger Method** | All methods available |
| **Fields Available** | Uses universal field detection patterns |
| **Configuration Required** | Manual selectors recommended |
| **Tested** | ✅ Yes |

**Field Detection Patterns:**

**Email:**
```css
input[type="email"]
input[name*="email" i]
input[id*="email" i]
#email, #user_email, #customer_email
```

**Phone:**
```css
input[type="tel"]
input[name*="phone" i]
input[id*="phone" i]
#phone, #telephone, #mobile
```

**First Name:**
```css
input[name*="first" i][name*="name" i]
input[name="fname"], input[name="firstname"]
#first_name, #firstname, #fname
```

**Last Name:**
```css
input[name*="last" i][name*="name" i]
input[name="lname"], input[name="lastname"]
#last_name, #lastname, #lname
```

---

## Testing Status Legend

- ✅ **Yes** - Fully tested and working
- ⚠️ **Needs testing** - Implemented but not extensively tested
- ❌ **Not yet implemented** - Planned but not built yet

## Contributing

Want to help test a platform or add a new one?

### Testing Checklist

1. Create test form/checkout on platform
2. Install GTM with template
3. Enable debug mode
4. Test form submission
5. Verify data capture in console
6. Verify dataLayer push
7. Test Google Ads conversion
8. Document any special configurations needed

### Adding New Platform

To add a new platform, we need:

1. **Platform Name**
2. **Detection Method** - How to identify the platform (DOM elements, global objects, URL patterns)
3. **Form/Checkout Selectors** - CSS selectors for forms and fields
4. **Success Indicator** - How to know conversion happened (success message, URL change, event)
5. **Field Patterns** - How email, phone, name fields are typically named
6. **Special Notes** - Any quirks or special considerations
7. **Test URL** - Example site or demo for testing

Submit via GitHub issue or pull request!

## Platform Priority

Based on usage and requests, platforms are prioritized as:

**High Priority (Completed):**
- ✅ Generic Forms
- ✅ Contact Form 7
- ✅ Gravity Forms
- ✅ WPForms
- ✅ Shopify
- ✅ WooCommerce
- ✅ HubSpot
- ✅ Elementor Forms
- ✅ Mailchimp (NEW)
- ✅ Klaviyo (NEW)
- ✅ ActiveCampaign (NEW)
- ✅ Calendly (NEW)
- ✅ Square Online (NEW)
- ✅ SurveyMonkey (NEW)
- ✅ Donorbox (NEW)
- ✅ Toast (NEW)

**Medium Priority (Next):**
- ⚠️ Magento
- ⚠️ BigCommerce
- ⚠️ Typeform
- ⚠️ JotForm
- ⚠️ Webflow
- ⚠️ Ninja Forms

**Low Priority:**
- Various others based on community requests

## Notes

- **Auto-detection** works by checking for platform-specific indicators in the DOM and global JavaScript objects
- **Field patterns** use case-insensitive matching with common naming conventions
- **Trigger methods** automatically adapt based on platform (form submit, success message, URL change, etc.)
- **Data normalization** standardizes email (lowercase) and phone (E.164) formats
- Some platforms may require **manual configuration** if they use non-standard field names or custom implementations

## Support

For platform-specific issues or questions:
- Check the [Template Guide](./TEMPLATE_GUIDE.md)
- Review [Troubleshooting](./TEMPLATE_GUIDE.md#troubleshooting) section
- Open a [GitHub Issue](https://github.com/gordonkgeraghty/GTM-Enhanced-Conversion-Template/issues)
