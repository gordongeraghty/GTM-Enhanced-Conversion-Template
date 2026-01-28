---
name: Platform Support Request
about: Request support for a new platform
title: '[PLATFORM] '
labels: platform-support
assignees: ''
---

## Platform Name

[e.g., Formspree, Calendly, Squarespace, Custom Platform]

## Platform Category

- [ ] E-commerce
- [ ] WordPress Forms
- [ ] Standalone Forms
- [ ] Marketing Automation
- [ ] CMS / Website Builder
- [ ] Events & Ticketing
- [ ] Learning Management System
- [ ] Booking / Scheduling
- [ ] Other: _______________

## Platform URL

Official website: https://

## Detection Signals

How can the template detect this platform automatically?

**Window objects**:
```javascript
// e.g., window.Shopify, window.wpcf7, etc.
```

**CSS classes**:
```
// e.g., .woocommerce, .gform_wrapper, etc.
```

**DOM elements**:
```
// e.g., data-formspree-id, #calendly-embed, etc.
```

**Other unique identifiers**:

## Field Selectors

Typical CSS selectors for form fields:

**Email field**:
```css
/* e.g., input[name="email"], #email_field, .email-input */
```

**Phone field**:
```css
/* e.g., input[name="phone"], input[type="tel"] */
```

**First Name field**:
```css
/* e.g., input[name="first_name"], #fname */
```

**Last Name field**:
```css
/* e.g., input[name="last_name"], #lname */
```

## Trigger Method

How should the template detect successful form submission?

- [ ] **Success message appears**
  - Selector: `_______________`
  - Example: `.success-message`, `#confirmation-text`

- [ ] **URL changes**
  - Pattern: `_______________`
  - Example: `/thank-you`, `?submitted=true`

- [ ] **Custom JavaScript event**
  - Event name: `_______________`
  - Example: `formSubmitted`, `conversionComplete`

- [ ] **Form submit event**
  - Standard form submit detection

- [ ] **DataLayer event**
  - Event name: `_______________`

## Example Page

**Option A: Provide URL**
- Live example: https://

**Option B: Provide HTML snippet**
```html
<!-- Paste form HTML structure here -->
<form class="your-platform-form">
  <input type="email" name="email" />
  <button type="submit">Submit</button>
</form>

<div class="success-message" style="display:none;">
  Thank you!
</div>
```

## JavaScript Console Output

If available, paste any relevant console output when the form is submitted:

```javascript
// window object inspection, event logs, etc.
```

## Priority / Usage

Why is this platform important?

- [ ] High priority - widely used platform
- [ ] Medium priority - growing platform
- [ ] Low priority - niche use case

**Estimated users**: [How many people use this platform?]

**Your use case**: [Why do you need this?]

## Additional Information

Screenshots, documentation links, API references, or anything else that helps understand the platform.

## Willing to Test?

- [ ] I can test the implementation once added
- [ ] I can provide feedback on field detection
- [ ] I have access to this platform for testing
