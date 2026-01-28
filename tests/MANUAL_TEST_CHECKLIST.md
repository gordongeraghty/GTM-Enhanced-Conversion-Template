# Manual Test Checklist

Use this checklist when testing the GTM Enhanced Conversion Template manually. Complete ALL sections before releasing changes.

## 1. Pre-Flight Checks

- [ ] Template loads in GTM without errors
- [ ] Debug mode can be toggled on/off
- [ ] GTM Preview mode shows tag firing
- [ ] Browser console accessible (F12)

## 2. Platform Detection Tests

Test auto-detection for major platforms:

### WordPress Forms
- [ ] Contact Form 7 detected correctly
- [ ] Gravity Forms detected correctly
- [ ] WPForms detected correctly
- [ ] Elementor Forms detected correctly

### E-commerce
- [ ] Shopify detected correctly
- [ ] WooCommerce detected correctly
- [ ] Magento detected correctly

### Standalone Forms
- [ ] Generic forms detected (fallback)
- [ ] Custom selectors override detection

### Verification
- [ ] Debug logs show correct platform name
- [ ] Only one platform detected (no false positives)

## 3. Field Detection Tests

For each platform tested:

- [ ] Email field found (type="email", name*="email", id*="email")
- [ ] Phone field found (type="tel", name*="phone")
- [ ] First name field found
- [ ] Last name field found
- [ ] Returns null gracefully when fields missing
- [ ] Debug logs show field values before submission

## 4. Validation Tests

### Valid Inputs (should pass)
- [ ] `test@example.com` accepted
- [ ] `user+tag@domain.co.uk` accepted
- [ ] `User@Domain.COM` accepted (normalized to lowercase)
- [ ] `(555) 123-4567` normalized to `+15551234567`

### Invalid Inputs (should reject)
- [ ] `test@example` rejected (no valid TLD)
- [ ] `test@.com` rejected (domain starts with dot)
- [ ] `@example.com` rejected (no local part)
- [ ] Empty string `""` rejected
- [ ] Whitespace `"   "` rejected

### Verification
- [ ] Debug logs show "Invalid email format" for rejected emails
- [ ] Debug logs show "No email found or email is empty" for empty inputs
- [ ] Valid emails proceed to dataLayer push

## 5. Deduplication Tests

### Single Submission
- [ ] First form submission → dataLayer push occurs
- [ ] Verify event name: `enhanced_conversion`
- [ ] Verify data structure: `{email, phone_number, first_name, last_name}`

### Double-Click (rapid submission within 10 seconds)
- [ ] First submission → dataLayer push occurs
- [ ] Second submission → blocked (debug log: "Duplicate event detected")
- [ ] Only ONE event in dataLayer

### Timed Submissions
- [ ] Submit form
- [ ] Wait 11 seconds
- [ ] Submit form again
- [ ] TWO separate events in dataLayer (dedupe window expired)

### Different Emails
- [ ] Submit with email1@example.com → pushed
- [ ] Submit with email2@example.com → pushed (different email = different event)
- [ ] Both events in dataLayer

## 6. Trigger Tests

### Success Element Trigger
- [ ] Success message appears → dataLayer push occurs
- [ ] Observer watches for success element
- [ ] Observer disconnects after success found
- [ ] Observer times out after 30 seconds if no success element
- [ ] Debug log shows "Success element appeared" or "Success element watch timed out"

### Form Submit Trigger
- [ ] Form submission → dataLayer push occurs
- [ ] Works with standard submit button
- [ ] Works with AJAX form submission

### URL Change Trigger
- [ ] URL changes to success pattern → dataLayer push occurs
- [ ] Debug log shows "URL matches success pattern"

## 7. Memory Leak Tests

### Observer Cleanup
- [ ] MutationObserver registered with MemoryManager
- [ ] Observer disconnects on success
- [ ] Observer disconnects on timeout (30s)
- [ ] No memory growth after repeated submissions

### Event Listener Cleanup
- [ ] Event listeners removed after first fire (if applicable)
- [ ] No duplicate listeners attached

### SPA Monitoring
- [ ] For SPAs: dataLayer doesn't accumulate duplicate observers
- [ ] For SPAs: old observers cleaned up on page transition

## 8. Consent Tests

### Consent Granted
- [ ] checkConsent = true → dataLayer push occurs
- [ ] Debug log shows consent check passed

### Consent Denied (if implemented)
- [ ] checkConsent = false → dataLayer push blocked
- [ ] Debug log shows "Consent not granted"

## 9. Edge Cases

### Multi-Step Forms
- [ ] Only final step triggers conversion
- [ ] No premature pushes on intermediate steps

### Multiple Forms on Page
- [ ] Correct form detected
- [ ] Field detection scoped to correct form
- [ ] No cross-form contamination

### AJAX/SPA
- [ ] Works on AJAX-loaded forms
- [ ] Works on SPAs (React, Vue, Angular)
- [ ] No double-triggering on navigation

### Non-Standard Field Names
- [ ] Custom selectors override defaults
- [ ] Manual mode works when auto-detection fails

## 10. Browser Compatibility

Test on multiple browsers:

- [ ] Chrome (latest)
- [ ] Firefox (latest)
- [ ] Safari (latest)
- [ ] Edge (latest)
- [ ] Mobile Chrome
- [ ] Mobile Safari

## 11. Final Checks

- [ ] No JavaScript errors in console
- [ ] dataLayer structure correct: `{event: 'enhanced_conversion', enhanced_conversion_data: {...}}`
- [ ] Email normalized to lowercase
- [ ] Phone normalized to E.164 format
- [ ] No PII logged to console (emails/phones appear only in debug mode)
- [ ] Template version number updated

---

## Test Results

**Date**: ___________
**Tester**: ___________
**Version**: ___________
**Platform(s) Tested**: ___________
**Result**: ⬜ PASS / ⬜ FAIL

**Notes**:



---

## Failures / Issues Found

| Item | Expected | Actual | Severity | Status |
|------|----------|--------|----------|--------|
|      |          |        |          |        |

---

**Sign-off**: ___________
