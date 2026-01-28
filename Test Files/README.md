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
