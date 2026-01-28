# Test Files

This directory contains HTML test files for testing the Enhanced Conversion Tracking GTM template with different platforms.

## Available Test Files

### 1. test-generic-form.html
A basic HTML contact form with standard field types (email, phone, first name, last name).

**Purpose:** Test generic form detection and field auto-detection
**Features:**
- Standard HTML5 input types
- Success message appears on submission
- No external dependencies

**To Test:**
1. Open file in browser
2. Open browser console (F12)
3. Fill out and submit form
4. Check console for template debug messages
5. Verify dataLayer push

---

### 2. test-contact-form-7.html
Simulates a Contact Form 7 (WordPress plugin) form structure.

**Purpose:** Test Contact Form 7 platform detection and event handling
**Features:**
- CF7-specific CSS classes
- Simulates `wpcf7mailsent` custom event
- CF7 field naming conventions (`your-email`, `your-name`, etc.)
- CF7 success message element

**To Test:**
1. Open file in browser with GTM container
2. Verify template detects CF7 platform (check console)
3. Fill out and submit form
4. Verify `wpcf7mailsent` event is captured
5. Check dataLayer for `enhanced_conversion` event

---

### 3. test-gravity-forms.html
Simulates a Gravity Forms (WordPress plugin) form structure.

**Purpose:** Test Gravity Forms platform detection
**Features:**
- Gravity Forms CSS classes (`.gform_wrapper`, `.gfield`)
- GF field naming (`input_1_1`, `input_1_2`, etc.)
- GF confirmation message
- Simulated `gform` global object

**To Test:**
1. Open file in browser with GTM container
2. Verify template detects Gravity Forms (check console)
3. Fill out and submit form
4. Verify success message detection
5. Check dataLayer push

---

### 4. test-mailchimp.html
Simulates a Mailchimp for WordPress (MC4WP) form.

**Purpose:** Test Mailchimp platform detection
**Features:**
- MC4WP form classes
- Mailchimp global objects (`window.mc4wp`, `window.MailchimpSubscribe`)
- Success message elements
- Standard Mailchimp field names (EMAIL, FNAME, LNAME, PHONE)

---

### 5. test-activecampaign.html
Simulates an ActiveCampaign embedded form.

**Purpose:** Test ActiveCampaign platform detection
**Features:**
- ActiveCampaign form classes (`._form`)
- AC global object (`window._ac`)
- Thank you message display
- AC field naming conventions

---

### 6. test-klaviyo.html
Simulates a Klaviyo embedded form.

**Purpose:** Test Klaviyo platform detection
**Features:**
- Klaviyo form classes
- Klaviyo global objects (`window.klaviyo`, `window._klOnsite`)
- Custom form submission event
- Klaviyo field naming ($email, $first_name, etc.)

---

### 7. test-calendly.html
Simulates a Calendly booking widget.

**Purpose:** Test Calendly platform detection
**Features:**
- Calendly inline widget element
- Calendly global object (`window.Calendly`)
- PostMessage event simulation for booking
- Interactive time slot selection

---

### 8. test-square-online.html
Simulates a Square Online checkout.

**Purpose:** Test Square Online platform detection
**Features:**
- Square checkout attributes
- Square global object (`window.Square`)
- Order confirmation flow
- E-commerce purchase event

---

### 9. test-surveymonkey.html
Simulates a SurveyMonkey survey form.

**Purpose:** Test SurveyMonkey platform detection
**Features:**
- SurveyMonkey global object (`window.SM`)
- Survey completion flow
- Standard survey fields with validation

---

### 10. test-donorbox.html
Simulates a Donorbox donation form.

**Purpose:** Test Donorbox platform detection
**Features:**
- Donorbox global object (`window.Donorbox`)
- Donation amount selection
- Custom donation completion event
- Donor field collection

---

### 11. test-toast.html
Simulates a Toast online ordering checkout.

**Purpose:** Test Toast platform detection
**Features:**
- Toast global object (`window.Toast`)
- Restaurant ordering flow
- Order confirmation page simulation
- Customer information collection

---

### 12. test-magento.html
Simulates a Magento checkout page.

**Purpose:** Test Magento platform detection
**Features:**
- Magento global object (`window.Magento`)
- Magento checkout form structure with `data-mage-init` attribute
- RequireJS context simulation
- Magento field naming (`firstname`, `lastname`, `telephone`, `postcode`)
- Purchase event simulation

---

### 13. test-bigcommerce.html
Simulates a BigCommerce checkout page.

**Purpose:** Test BigCommerce platform detection
**Features:**
- BigCommerce global object (`window.BCData`)
- `data-bigcommerce` attribute on checkout form
- Cart and store hash simulation
- Customer information collection
- Purchase event simulation

---

### 14. test-typeform.html
Simulates a Typeform embedded form.

**Purpose:** Test Typeform platform detection
**Features:**
- Typeform global object (`window.tf`)
- Multi-step form with progress bar
- Typeform-specific CSS classes
- Form completion event simulation
- Interactive question flow

---

### 15. test-jotform.html
Simulates a JotForm embedded form.

**Purpose:** Test JotForm platform detection
**Features:**
- JotForm global object (`window.JotForm`)
- JotForm form structure with `.jotform-form` class
- JotForm field naming conventions
- Thank you page simulation
- Form submission event

---

### 16. test-webflow.html
Simulates a Webflow form.

**Purpose:** Test Webflow platform detection
**Features:**
- Webflow `data-wf-page` and `data-wf-site` attributes
- Webflow form classes (`.w-form`, `.w-input`, `.w-button`)
- Success/fail message elements
- Standard contact form fields

---

### 17. test-ninja-forms.html
Simulates a Ninja Forms (WordPress) form.

**Purpose:** Test Ninja Forms platform detection
**Features:**
- Ninja Forms global object (`window.nfFrontEnd`)
- nfRadio backbone model simulation
- Ninja Forms CSS classes (`.nf-form-cont`, `.nf-field-container`)
- Custom form submission event (`nfFormSubmitResponse`)
- Ninja Forms field structure

---

### 18. test-all-platforms.html
Comprehensive test suite for all platform detections.

**Purpose:** Automated testing of all platform detection methods
**Features:**
- Tests all 14 new platforms (8 marketing/booking + 6 existing platforms)
- Tests existing platform detection
- Pass/fail reporting
- Detailed logging
- Both window object and DOM detection testing

**To Test:**
1. Open file in browser
2. Click "Run All Tests" or "Test New Platforms Only"
3. Review pass/fail results
4. Check log for detailed output

---

## How to Use Test Files

### Setup

1. **Create GTM Container** (if you don't have one):
   - Go to [Google Tag Manager](https://tagmanager.google.com)
   - Create a new container
   - Get the GTM snippet code

2. **Install GTM Template**:
   - Import the `template.tpl` file into GTM
   - Create a new tag using the template

3. **Configure Template Tag**:
   - Detection Mode: Auto-Detect Platform
   - Conversion Type: Lead
   - Debug Mode: **Enabled** (important for testing)
   - Trigger: All Pages (or Window Loaded)

4. **Add GTM to Test File**:
   - Copy your GTM container snippet
   - Paste it into the test HTML file's `<head>` section
   - Or use GTM Preview mode URL parameter

### Testing with GTM Preview Mode

**Method 1: Local File with GTM Preview**

1. Publish your GTM container in Preview mode
2. Get the Preview mode snippet
3. Add it to the test HTML file before `</head>`
4. Open the test file in your browser
5. GTM Preview panel should appear

**Method 2: Hosted File**

1. Host the test file on a web server (localhost, GitHub Pages, etc.)
2. Start GTM Preview mode
3. Enter the URL of your hosted test file
4. GTM Preview will connect

### What to Check

**In Browser Console:**
```
[EC Tracking] Enhanced Conversion Tracking initialized
[EC Tracking] Detected platform: contactForm7 (or generic)
[EC Tracking] Found field with pattern: input[type="email"]
[EC Tracking] Collected raw data: {email: "test@example.com", ...}
[EC Tracking] Processed data: {email: "test@example.com", ...}
[EC Tracking] Pushing to dataLayer: {event: "enhanced_conversion", ...}
[EC Tracking] Successfully pushed to dataLayer
```

**In GTM Preview:**
1. Check that your template tag fired
2. Check the DataLayer tab for the `enhanced_conversion` event
3. Verify the `enhanced_conversion_data` object contains correct fields

**In GTM Debug Panel:**
```javascript
Event: enhanced_conversion
Enhanced Conversion Data:
{
  email: "customer@example.com",
  phone_number: "+1234567890",
  first_name: "John",
  last_name: "Doe"
}
```

## Troubleshooting Test Files

### Form submits but no dataLayer push

**Possible causes:**
- Template tag didn't fire (check GTM Preview)
- Debug mode not enabled (can't see console messages)
- Fields not detected (check console for field detection messages)
- Email field empty or invalid

**Solutions:**
1. Enable debug mode in template
2. Check browser console for errors
3. Verify template tag trigger is correct
4. Make sure email field has valid email

### Platform not detected correctly

**Check:**
- Console should show: `[EC Tracking] Detected platform: [name]`
- If showing `generic`, platform detection failed

**Solutions:**
1. For Contact Form 7: Ensure `.wpcf7-form` class exists
2. For Gravity Forms: Ensure `.gform_wrapper` class exists
3. Try manual platform selection in template config

### DataLayer push happens but fields are empty

**Check:**
- Console shows: `[EC Tracking] Collected raw data: {}`
- Field detection failed

**Solutions:**
1. Check field selectors in template configuration
2. Try manual CSS selector for fields
3. Verify fields have values when form submits
4. Increase execution delay (try 500-1000ms)

### Success message not triggering the event

**Check:**
- Is success message actually appearing?
- Is it visible (not `display: none`)?
- Correct selector being used?

**Solutions:**
1. Use browser inspector to verify success message element
2. Check CSS selector in template config
3. Try different trigger method (form submit instead)

## Creating Your Own Test Files

Want to test a different platform? Here's the structure:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test - [Platform Name]</title>
    <!-- Add your GTM container snippet here -->
</head>
<body>
    <!-- Platform-specific classes and structure -->
    <form class="platform-form-class">
        <input type="email" name="email" id="email">
        <input type="tel" name="phone" id="phone">
        <input type="text" name="first_name" id="first-name">
        <input type="text" name="last_name" id="last-name">
        <button type="submit">Submit</button>
    </form>

    <div class="success-message" style="display: none;">
        Success!
    </div>

    <!-- Platform-specific global objects (if any) -->
    <script>
        window.dataLayer = window.dataLayer || [];
        // Add platform detection objects here
    </script>

    <!-- Form handler -->
    <script>
        document.querySelector('form').addEventListener('submit', function(e) {
            e.preventDefault();

            // Show success message
            document.querySelector('.success-message').style.display = 'block';

            // Dispatch platform-specific events if applicable
        });
    </script>
</body>
</html>
```

## Additional Resources

- [Template Guide](../TEMPLATE_GUIDE.md) - Complete template documentation
- [Platform Support](../PLATFORM_SUPPORT.md) - Supported platforms and configurations
- [GTM Preview Mode Docs](https://support.google.com/tagmanager/answer/6107056)
- [Chrome DevTools Guide](https://developer.chrome.com/docs/devtools/)

## Contributing Test Files

If you create a test file for a platform not listed here, please contribute it back:

1. Ensure it follows the structure above
2. Add documentation in this README
3. Test it thoroughly
4. Submit a pull request

## Notes

- Test files use inline JavaScript for simplicity
- In production, forms would connect to real backends
- Success messages are simulated (no actual form submission)
- DataLayer initialization is included but GTM container must be added
- Some platforms require their JavaScript libraries; test files simulate these
