# Contributing

Thanks for wanting to help out. Here's how to do it.

## Quick version

1. Fork the repo
2. Make your changes
3. Test them (see below)
4. Submit a pull request

## What we need help with

**Adding platforms** - The most useful contribution. Got a form plugin or e-commerce platform that doesn't work? Add detection for it.

**Bug fixes** - Something not working right? Fix it and send a PR.

**Documentation** - Typos, unclear explanations, missing examples. All welcome.

**Performance** - Ideas for making things faster without breaking anything.

## Adding a new platform

This is the most common contribution. Here's the process:

### 1. Figure out how to detect the platform

Load a page that uses the platform and open browser dev tools. Look for:

- Global JavaScript objects (`window.SomePlatform`)
- Unique CSS classes (`.some-platform-form`)
- Meta tags or data attributes
- Unique DOM structure

You need something that only exists on pages using this platform.

### 2. Find the field selectors

Still in dev tools, inspect the form fields. Find selectors that work for:

- Email field
- Phone field (if present)
- First name field
- Last name field

Try to use stable selectors. Class names are usually better than generated IDs.

### 3. Figure out the trigger

How do you know the form was submitted successfully?

- Does a success message appear? What's its selector?
- Does the URL change?
- Is there a JavaScript event you can listen for?

### 4. Add the code

In `template.tpl`:

Add detection method (around line 900):
```javascript
detectMyPlatform: function() {
  if (window.MyPlatformGlobal) return true;
  if (document.querySelector('.myplatform-class')) return true;
  return false;
},
```

Add to detect() method:
```javascript
if (this.detectMyPlatform()) return 'myplatform';
```

Add platform config (around line 1000):
```javascript
myplatform: {
  fieldSelectors: {
    email: '.myplatform-form input[type="email"]',
    phone: '.myplatform-form input[type="tel"]',
    firstName: '.myplatform-form input[name="first_name"]',
    lastName: '.myplatform-form input[name="last_name"]'
  },
  triggers: {
    successSelector: '.myplatform-success-message'
  }
},
```

### 5. Create a test file

Make `Test Files/test-myplatform.html`:

```html
<!DOCTYPE html>
<html>
<head>
  <title>MyPlatform Test</title>
</head>
<body>
  <form class="myplatform-form">
    <input type="email" name="email" value="test@example.com">
    <input type="tel" name="phone" value="+1234567890">
    <input type="text" name="first_name" value="John">
    <input type="text" name="last_name" value="Doe">
    <button type="submit">Submit</button>
  </form>

  <div class="myplatform-success-message" style="display:none;">
    Thank you!
  </div>

  <script>
    // Simulate the platform's global object
    window.MyPlatformGlobal = { version: '1.0' };
    window.dataLayer = window.dataLayer || [];

    document.querySelector('form').addEventListener('submit', function(e) {
      e.preventDefault();
      document.querySelector('.myplatform-success-message').style.display = 'block';
    });
  </script>
</body>
</html>
```

### 6. Test it

1. Open the test file in your browser
2. Open the console (F12)
3. Submit the form
4. Check that dataLayer shows the enhanced_conversion event
5. Import into GTM and test in Preview mode

### 7. Update documentation

Add your platform to PLATFORM_SUPPORT.md with:
- Platform name
- Detection method
- Field selectors
- Trigger type
- Testing status

## Testing

Before submitting a PR, test manually:

**Check detection works**
- Console shows correct platform name
- No false positives (doesn't detect when platform isn't there)

**Check fields are found**
- Email, phone, names all captured
- Values are correct (not empty, not wrong field)

**Check data is valid**
- Email is lowercase
- Phone is in +1234567890 format
- No whitespace issues

**Check the trigger**
- Only fires once per submission
- Fires at the right time (after success, not before)

**Check in GTM**
- Template imports without errors
- Tag fires in Preview mode
- Data shows up correctly

## Code style

- No external libraries (vanilla JS only)
- Use `const` and `let`, not `var`
- No semicolons (or always semicolons - just be consistent with what's there)
- Comments for complex logic, not obvious code

## Pull request checklist

Before submitting:

- [ ] Tested manually with the test file
- [ ] Tested in GTM Preview mode
- [ ] Updated PLATFORM_SUPPORT.md (if adding platform)
- [ ] No console errors
- [ ] Code matches existing style

## Questions?

Open an issue if you're stuck. Happy to help.
