# Enhanced Conversion Tracking - Universal GTM Template

## Overview

This is a **single, unified Google Tag Manager Custom Template** that enables Enhanced Conversion Tracking for Google Ads across 30+ platforms including e-commerce systems, form builders, marketing automation platforms, and more.

Unlike traditional approaches that require separate implementations for each platform, this template uses intelligent auto-detection and platform-specific configurations to work universally.

## Key Features

- **Auto-Detection**: Automatically identifies the platform and configures itself
- **30+ Platform Support**: Works with Shopify, WooCommerce, Contact Form 7, Gravity Forms, HubSpot, and many more
- **Zero External Dependencies**: No jQuery or other libraries required
- **Built-in Validation**: Validates email format, normalizes phone numbers, etc.
- **Consent Management**: Respects GTM Consent Mode and common consent platforms
- **Debug Mode**: Comprehensive logging for troubleshooting
- **Flexible Configuration**: Auto-detect or manual configuration options

## Installation

### Option 1: Import Template File (Recommended)

1. Download [template.tpl](./template.tpl)
2. In Google Tag Manager, go to **Templates** → **Tag Templates**
3. Click **New** → **More Actions** (⋮) → **Import**
4. Select the downloaded `template.tpl` file
5. Save the template

### Option 2: Manual Import from Community Gallery

Once published to the GTM Community Template Gallery:

1. In GTM, go to **Templates** → **Tag Templates**
2. Click **Search Gallery**
3. Search for "Enhanced Conversion Tracking - Universal"
4. Click on the template and then **Add to Workspace**

## Supported Platforms

### E-commerce Platforms (Purchase Tracking)
- ✅ Shopify
- ✅ WooCommerce
- ✅ Magento / Adobe Commerce
- ✅ BigCommerce
- ✅ Squarespace Commerce
- ✅ Wix eCommerce
- ✅ Ecwid
- ✅ PrestaShop
- ✅ OpenCart
- And more...

### WordPress Form Plugins (Lead Tracking)
- ✅ Contact Form 7
- ✅ Gravity Forms
- ✅ WPForms
- ✅ Ninja Forms
- ✅ Formidable Forms
- ✅ Elementor Forms
- ✅ Fluent Forms
- ✅ Forminator
- And more...

### Standalone Form Builders (Lead Tracking)
- ✅ Typeform
- ✅ JotForm
- ✅ Google Forms
- ✅ Formstack
- ✅ Wufoo
- ✅ Cognito Forms
- And more...

### Marketing Automation Platforms (Lead Tracking)
- ✅ HubSpot
- ✅ Marketo
- ✅ Pardot (Salesforce)
- ✅ ActiveCampaign
- ✅ Mailchimp
- ✅ ConvertKit
- And more...

### Event & Ticketing Platforms (Purchase Tracking)
- ✅ Humanitix
- ✅ Eventbrite
- ✅ Ticketmaster
- ✅ Tito
- And more...

### Learning & Course Platforms (Purchase Tracking)
- ✅ Teachable
- ✅ Thinkific
- ✅ Kajabi
- ✅ Podia
- And more...

### CMS Platforms (Form Tracking)
- ✅ Webflow
- ✅ Drupal
- ✅ Joomla
- ✅ Ghost
- And more...

### Generic/Custom Forms
- ✅ Any HTML form with standard field types

## Quick Start Guide

### For Most Users (Recommended)

1. **Create a new tag** in GTM
2. **Select** the "Enhanced Conversion Tracking - Universal" template
3. **Keep Detection Mode** set to "Auto-Detect Platform"
4. **Select Conversion Type**: Purchase or Lead
5. **Enable Debug Mode** initially (to verify it's working)
6. **Save** and test

That's it! The template will automatically:
- Detect your platform
- Find the relevant form fields
- Capture user data when conversions happen
- Push to dataLayer for Google Ads

### Manual Configuration (Advanced)

If auto-detection doesn't work or you need specific control:

1. Set **Detection Mode** to "Manual Configuration"
2. Select your **Platform Category** (e.g., "WordPress Form Plugins")
3. Choose **Specific Platform** (e.g., "Contact Form 7")
4. Configure **Field Mapping** if needed
5. Adjust **Trigger Configuration** if needed

## Configuration Options

### Detection Mode

**Auto-Detect Platform (Recommended)**
- Automatically identifies which platform you're using
- Works for most common platforms
- Minimal configuration required

**Manual Configuration**
- Full control over platform selection
- Use when auto-detect doesn't work
- Required for custom implementations

### Conversion Type

**Purchase/Transaction**
- For e-commerce checkouts
- Product purchases
- Event ticket sales
- Course enrollments

**Lead/Form Submission**
- Contact forms
- Newsletter signups
- Quote requests
- Registration forms

### Field Mapping Configuration

For each field (Email, Phone, First Name, Last Name):

**Auto-Detect** (Default)
- Template finds fields automatically using common patterns
- Works for 95% of standard forms

**Custom CSS Selector**
- Specify exact CSS selector (e.g., `#customer_email`)
- Use for non-standard field names

**GTM Variable**
- Use an existing GTM variable
- Useful if data is already captured

**DataLayer Variable**
- Read from existing dataLayer key
- For platforms that already push data

**Not Available**
- Skip optional fields (phone, first/last name)

### Trigger Configuration

**Auto-Detect (Recommended)**
- Tries multiple trigger methods automatically
- Form submit events
- Success message detection
- URL changes

**Form Submit Event**
- Triggers when form is submitted
- Requires form selector

**Success Message Appears**
- Watches for success message to appear
- Uses MutationObserver
- Requires success message selector

**URL Change**
- Triggers on thank-you page
- Requires URL pattern (e.g., `/thank-you`)

**Custom JavaScript Event**
- Listen for specific JavaScript event
- For platforms with custom events

**DataLayer Event**
- Triggers on specific dataLayer event
- For existing dataLayer implementations

### Advanced Settings

**Output Event Name**
- DataLayer event name (default: `enhanced_conversion`)
- Used to trigger Google Ads tags

**Enable Data Validation**
- Validates email format
- Checks phone number format
- Recommended: Keep enabled

**Normalize Data**
- Converts email to lowercase
- Formats phone to E.164 standard
- Trims whitespace
- Recommended: Keep enabled

**Check Consent Before Tracking**
- Respects GTM Consent Mode
- Checks common consent platforms
- Recommended: Keep enabled

**Hash User Data (SHA-256)**
- Hash email/phone before sending
- Note: Not currently implemented
- Future feature

**Execution Delay (ms)**
- Delay before capturing data
- Useful for AJAX forms (try 500-1000ms)
- Default: 0

**Max Retry Attempts**
- Retry if fields not found
- Default: 3

**Enable Debug Mode**
- Logs detailed info to console
- Shows detected fields
- Shows captured data
- Enable for testing, disable for production

## Setup Examples

### Example 1: Contact Form 7 (Auto-Detect)

```
1. Create new tag using template
2. Detection Mode: Auto-Detect Platform
3. Conversion Type: Lead
4. Debug Mode: Enabled (for testing)
5. Trigger: All Pages (or specific form pages)
6. Save and test
```

The template will automatically:
- Detect Contact Form 7
- Find email, phone, name fields
- Watch for success message
- Push to dataLayer on form submission

### Example 2: Shopify Checkout (Auto-Detect)

```
1. Create new tag using template
2. Detection Mode: Auto-Detect Platform
3. Conversion Type: Purchase
4. Debug Mode: Enabled
5. Trigger: All Pages
6. Save and publish
```

The template will automatically:
- Detect Shopify
- Read from Shopify's dataLayer
- Capture customer email/phone
- Push on purchase completion

### Example 3: Custom Form (Manual Config)

```
1. Create new tag using template
2. Detection Mode: Manual Configuration
3. Platform Category: Generic/Custom Form
4. Conversion Type: Lead
5. Field Mapping:
   - Email Field: Custom CSS Selector → #email-input
   - Phone Field: Custom CSS Selector → #phone-input
   - First Name: Custom CSS Selector → #fname
   - Last Name: Not Available
6. Trigger Configuration:
   - Trigger Method: Success Message Appears
   - Success Message Selector: .thank-you-message
7. Debug Mode: Enabled
8. Save and test
```

### Example 4: WooCommerce Thank You Page

```
1. Create new tag using template
2. Detection Mode: Auto-Detect Platform
3. Conversion Type: Purchase
4. Trigger: Page View - URL contains "order-received"
5. Debug Mode: Enabled
6. Save and publish
```

## Testing Your Setup

### Step 1: Enable Debug Mode

1. In your tag configuration, check **Enable Debug Mode**
2. Save and refresh GTM Preview

### Step 2: Test the Conversion

1. Go to your website with GTM Preview active
2. Submit a form or complete a purchase
3. Open browser console (F12)

### Step 3: Check Debug Output

Look for messages like:
```
[EC Tracking] Enhanced Conversion Tracking initialized
[EC Tracking] Detected platform: contactForm7
[EC Tracking] Found field with pattern: input[type="email"]
[EC Tracking] Collected raw data: {email: "test@example.com", ...}
[EC Tracking] Processed data: {email: "test@example.com", ...}
[EC Tracking] Pushing to dataLayer: {event: "enhanced_conversion", ...}
[EC Tracking] Successfully pushed to dataLayer
```

### Step 4: Verify DataLayer Push

In GTM Preview, check the **Data Layer** tab for:
```javascript
{
  event: "enhanced_conversion",
  enhanced_conversion_data: {
    email: "customer@example.com",
    phone_number: "+1234567890",
    first_name: "John",
    last_name: "Doe"
  }
}
```

### Step 5: Create Google Ads Tag

1. Create a new **Google Ads Conversion Tracking** tag
2. Set **Conversion ID** and **Conversion Label**
3. Under **Enhanced Conversions**, select:
   - **Use Data from Event Model**
   - Variable: `{{DLV - enhanced_conversion_data}}`
4. Trigger: Custom Event = `enhanced_conversion`
5. Save and publish

## Troubleshooting

### Issue: No data captured

**Check:**
1. Is debug mode showing field detection?
2. Are the field selectors correct?
3. Is the form actually submitting?
4. Check browser console for errors

**Solutions:**
- Try manual field mapping with specific CSS selectors
- Increase execution delay (500-1000ms)
- Check if form uses AJAX submission
- Verify trigger method is appropriate

### Issue: Email validation failing

**Check:**
1. Is the email format valid?
2. Are there hidden characters?

**Solutions:**
- Keep "Normalize Data" enabled
- Check raw data in console
- Verify field selector points to correct input

### Issue: Success message not detected

**Check:**
1. Does success message actually appear in DOM?
2. Is it visible (not hidden with CSS)?
3. Is the selector correct?

**Solutions:**
- Try different trigger method (Form Submit)
- Use URL change if redirect happens
- Check MutationObserver in console

### Issue: Platform not detected

**Check:**
1. Is debug mode showing detected platform?
2. What platform is it detecting?

**Solutions:**
- Switch to Manual Configuration
- Select platform explicitly
- Report issue for platform detection improvement

### Issue: Multiple events firing

**Check:**
1. Are there multiple forms on page?
2. Is trigger firing multiple times?

**Solutions:**
- Use more specific form selector
- Add trigger conditions
- Use "Once per page" trigger option

## Best Practices

### 1. Always Test in Preview Mode First

Never deploy directly to production without testing in GTM Preview mode.

### 2. Start with Debug Mode Enabled

Enable debug mode initially, verify everything works, then disable for production.

### 3. Use Auto-Detect When Possible

Manual configuration is more fragile and harder to maintain.

### 4. Keep Data Validation Enabled

Prevents sending invalid data to Google Ads.

### 5. Respect User Consent

Keep "Check Consent Before Tracking" enabled.

### 6. Test Across Different Browsers

Some platforms behave differently in different browsers.

### 7. Monitor After Deployment

Check Google Ads for enhanced conversion reporting after 24-48 hours.

### 8. Document Your Configuration

Note any custom selectors or special configurations for future reference.

## Privacy & Compliance

### GDPR Compliance

This template respects user consent when properly configured:

1. **Enable** "Check Consent Before Tracking"
2. Ensure GTM Consent Mode is properly configured
3. Only collect data with explicit user consent

### Data Processing

- Email addresses are normalized (lowercased, trimmed)
- Phone numbers are formatted to E.164 standard
- No data is stored by the template
- All data is passed directly to Google Ads via dataLayer

### Hashing (Future Feature)

SHA-256 hashing option will be added in future version for additional privacy.

## Support & Contributions

### Reporting Issues

Found a bug or platform that doesn't work? Open an issue on GitHub:
- [GitHub Issues](https://github.com/gordongeraghty/GTM-Enhanced-Conversion-Template/issues)

### Adding New Platforms

Want to add support for a new platform? Contribute via pull request or open an issue with:
- Platform name
- Detection method (how to identify it)
- Field selectors
- Trigger method
- Example URL

### Community Support

Questions? Check existing issues or start a discussion on GitHub.

## Advanced: Custom Platform Configuration

For developers who want to add their own platform configurations:

The template includes a `PlatformConfigs` object that defines platform-specific settings. You can extend this by modifying the template code.

Example configuration structure:
```javascript
myPlatform: {
  conversionType: 'lead',
  triggerMethod: 'form_submit',
  formSelector: '.my-form',
  successSelector: '.success',
  selectors: {
    email: '#email',
    phone: '#phone',
    firstName: '#fname',
    lastName: '#lname'
  }
}
```

## Changelog

### Version 1.0 (January 2026)
- Initial release
- Support for 30+ platforms
- Auto-detection engine
- Universal field detector
- Data validation and normalization
- Consent management
- Debug mode
- Multiple trigger methods

## License

Apache License 2.0 - see [LICENSE](./LICENSE) file for details

## Credits

Created by Gordon Geraghty
- GitHub: [@gordongeraghty](https://github.com/gordongeraghty)

## FAQ

**Q: Does this work with Google Analytics 4?**
A: Yes! The same dataLayer event can be used by both Google Ads and GA4 tags.

**Q: Do I need multiple tags for multiple forms?**
A: No! One tag can handle multiple forms on the same site if they're on the same platform.

**Q: Does this work with AJAX forms?**
A: Yes! Use the "Execution Delay" setting to wait for AJAX completion.

**Q: Can I use this for offline conversions?**
A: This is specifically for online conversions. For offline, use Google Ads' offline conversion import.

**Q: Does it work on single-page applications (SPAs)?**
A: Yes, it watches for form submissions and success messages dynamically.

**Q: How do I know if enhanced conversions are working?**
A: Check Google Ads → Tools → Conversions → Select your conversion action → Check "Enhanced conversions" status.

**Q: What's the difference between this and Google's automatic enhanced conversions?**
A: This gives you more control and works across many more platforms than Google's automatic method.

**Q: Can I customize the output event name?**
A: Yes! Use the "Output Event Name" field in Advanced Settings.

**Q: Does this require changes to my website code?**
A: No! Everything is handled through GTM - no code changes needed.

**Q: What if my platform isn't supported?**
A: Use "Generic/Custom Form" with manual field mapping, or request the platform be added.
