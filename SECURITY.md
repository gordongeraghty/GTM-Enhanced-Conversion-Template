# Security

## Reporting vulnerabilities

If you find a security issue, don't post it publicly. Instead, [open a private security advisory](https://github.com/gordongeraghty/GTM-Enhanced-Conversion-Template/security/advisories/new) on GitHub.

Include:
- What the vulnerability is
- How to reproduce it
- What impact it might have

We'll respond within 48 hours and work on a fix. Once it's resolved, we'll credit you in the release notes (unless you prefer to stay anonymous).

## What this template does with data

The template collects user data from form fields and pushes it to GTM's dataLayer. That's it.

**It does:**
- Read form field values (email, phone, names) after form submission
- Validate email format
- Normalize phone numbers to international format
- Push data to dataLayer for your Google Ads tag to read

**It doesn't:**
- Store data anywhere
- Send data to any server (except through GTM to Google Ads)
- Track users across pages or sites
- Collect data without user action

## Consent

The template checks GTM Consent Mode before pushing data. If the user hasn't granted ad_storage consent, no data gets pushed.

You're responsible for:
- Setting up Consent Mode in GTM
- Making sure your consent banner works correctly
- Complying with privacy laws in your jurisdiction

## Client-side limitations

Everything happens in the browser. That means:

**The data is visible** - Anyone who opens dev tools can see what's being collected. This is true of any client-side tracking.

**You can't hash data securely** - The template doesn't hash emails or phone numbers. If you need hashing, do it server-side. Client-side hashing doesn't add real security because the original data is still visible in the form.

**Validation is basic** - Email validation checks format only. It won't catch typos or verify the email exists.

## If you need more security

For sensitive data or strict compliance requirements:

1. **Server-side tracking** - Use GTM Server-Side to process data on your server before sending to Google
2. **Google Ads API** - Implement enhanced conversions server-side through the API
3. **Hash on your server** - If you need hashing, do it backend and pass hashed values through dataLayer

## What we do to keep the template secure

- No external dependencies (no supply chain attacks)
- No eval() or innerHTML with user data
- Input validation before processing
- Runs in GTM's sandboxed environment
- Regular code review

## Best practices

Before going live:
- Test in GTM Preview mode
- Check what data is being collected (Debug Mode shows everything)
- Make sure consent is working
- Review your privacy policy

Ongoing:
- Keep the template updated
- Monitor for unexpected behavior
- Review dataLayer pushes periodically

## Questions

For security questions that aren't vulnerabilities, open a GitHub issue.
