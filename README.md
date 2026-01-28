# Google Ads Enhanced Conversion Tracking - GTM Template

A Google Tag Manager template that handles Enhanced Conversion Tracking for Google Ads. Works with over 50 platforms out of the box - e-commerce sites, form plugins, marketing tools, and more.

## The problem this solves

Setting up enhanced conversions usually means writing custom code for each platform. Shopify needs one approach, Contact Form 7 needs another, HubSpot forms need something else entirely. This gets tedious.

This template detects what platform you're using and configures itself. One template, one setup process, works across your sites.

## What it does

- Detects your platform automatically (works about 90% of the time)
- Captures email, phone, and name fields from forms
- Validates and formats the data (emails lowercase, phones in E.164 format)
- Pushes to dataLayer for your Google Ads conversion tag
- Cleans up after itself to prevent memory leaks on single-page apps

## Supported platforms

**E-commerce:** Shopify, WooCommerce, Magento, BigCommerce, Squarespace Commerce, Wix, Square Online, PrestaShop, OpenCart, and others

**WordPress forms:** Contact Form 7, Gravity Forms, WPForms, Ninja Forms, Elementor Forms, Fluent Forms, Formidable Forms, Forminator

**Standalone forms:** Typeform, JotForm, Google Forms, Formstack, Wufoo, Cognito Forms

**Marketing automation:** HubSpot, Mailchimp, Klaviyo, ActiveCampaign, Marketo, Pardot

**Events and bookings:** Eventbrite, Humanitix, Calendly, Acuity Scheduling

**Surveys:** SurveyMonkey

**Donations:** Donorbox

**Restaurant ordering:** Toast

**Learning platforms:** Teachable, Thinkific, Kajabi, LearnDash

**CMS:** Webflow, Drupal, Joomla, Ghost

Full details in [PLATFORM_SUPPORT.md](./PLATFORM_SUPPORT.md).

## Setup

### 1. Import the template

1. Download [template.tpl](./template.tpl)
2. In GTM, go to Templates > Tag Templates > New
3. Click the menu (three dots) > Import
4. Select the file and save

### 2. Create a tag

1. Go to Tags > New
2. Choose "Enhanced Conversion Tracking - Universal"
3. Set Detection Mode to "Auto-Detect Platform"
4. Set Conversion Type (Lead for forms, Purchase for e-commerce)
5. Turn on Debug Mode while testing
6. Trigger on All Pages or Window Loaded
7. Save

### 3. Test it

1. Click Preview in GTM
2. Go to your site and submit a form
3. Check the browser console for debug messages
4. Look for `enhanced_conversion` in the dataLayer
5. Once it works, publish

## Configuration

**Detection Mode**
- Auto-Detect: Template figures out your platform (recommended)
- Manual: You specify the platform and selectors

**Conversion Type**
- Lead: Form submissions, sign-ups, registrations
- Purchase: E-commerce transactions

**Debug Mode**
Shows console logs like:
```
[EC Tracking] Detected platform: contactForm7
[EC Tracking] Collected: {email: "user@example.com"}
[EC Tracking] Pushing to dataLayer...
```

**Advanced options**
- Execution Delay: How long to wait before collecting data (default 200ms)
- Custom CSS Selectors: Override auto-detection for specific fields

## Data format

The template pushes this to dataLayer:

```javascript
{
  event: 'enhanced_conversion',
  enhanced_conversion_data: {
    email: 'user@example.com',
    phone_number: '+1234567890',
    first_name: 'John',
    last_name: 'Doe',
    address: {
      street: '123 Main St',
      city: 'San Francisco',
      region: 'CA',
      postal_code: '94102',
      country: 'US'
    }
  }
}
```

Your Google Ads conversion tag reads this data automatically.

## Troubleshooting

**Form submits but nothing happens**
- Turn on Debug Mode and check the console
- Make sure the email field has a valid email
- Check that your GTM tag fired in Preview mode

**Wrong platform detected**
- Console shows `[EC Tracking] Detected platform: [name]`
- If it says `generic`, switch to Manual mode and set selectors yourself

**Fields not found**
- Debug Mode shows which fields were detected
- Use browser inspector to find the right selectors
- Add them in the template's custom selector fields

**Data pushes but fields are empty**
- Try increasing the execution delay to 500ms or 1000ms
- Check that the fields have values when the form submits
- Make sure success messages are visible (not `display: none`)

## Documentation

- [Template Guide](./TEMPLATE_GUIDE.md) - Full setup and configuration
- [Platform Support](./PLATFORM_SUPPORT.md) - All 50+ platforms with detection methods
- [Architecture](./ARCHITECTURE.md) - How the template works internally
- [Test Files](./Test%20Files/) - HTML files for testing

## Privacy

- Only collects data from forms when users submit them
- Respects GTM Consent Mode
- Validates emails before sending
- Doesn't store anything - just passes data to GTM dataLayer

## Browser support

Chrome 90+, Firefox 88+, Safari 14+, Edge 90+

Uses modern JavaScript. No polyfills needed.

## Contributing

Found a bug? Have a platform that doesn't work? Want to improve something?

Open an issue or submit a pull request. See [CONTRIBUTING.md](./CONTRIBUTING.md) for details.

## License

MIT - see [LICENSE](./LICENSE)

## Links

**Google's documentation:**
- [About enhanced conversions](https://support.google.com/google-ads/answer/9888656)
- [Set up with GTM](https://support.google.com/google-ads/answer/10172785)
- [Enhanced conversions for leads](https://support.google.com/google-ads/answer/11347292)

**GTM resources:**
- [Preview Mode](https://support.google.com/tagmanager/answer/6107056)
- [Custom Templates](https://developers.google.com/tag-platform/tag-manager/templates)
- [Consent Mode](https://support.google.com/tagmanager/answer/10718549)
