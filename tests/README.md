# GTM Enhanced Conversion Template - Testing Guide

This directory contains the test suite for the GTM Enhanced Conversion Template.

## Test Strategy

We use a **multi-layer testing approach** to ensure reliability:

1. **Unit Tests** (Jasmine) - Test individual functions and modules
2. **Integration Tests** (HTML files) - Test platform detection and data collection
3. **Manual Tests** (Checklist) - Real-world validation in GTM Preview mode
4. **CI/CD** (GitHub Actions) - Automated execution on every push/PR

## Quick Start

### Run Unit Tests (Browser)

1. Open `test-runner.html` in your browser
2. Tests run automatically
3. View results in the Jasmine UI

### Run Unit Tests (CLI)

```bash
cd tests
npm install
npm test
```

### Run Manual Tests

1. Follow the checklist in `MANUAL_TEST_CHECKLIST.md`
2. Test in GTM Preview mode with real websites
3. Document results in the checklist

## Directory Structure

```
tests/
├── jasmine/
│   ├── spec/                    # Unit test files
│   │   ├── utils.spec.js        # Utility function tests
│   │   ├── validation.spec.js   # Data validation tests
│   │   └── deduplication.spec.js # Event deduplication tests
│   └── support/
│       └── jasmine.json         # Jasmine configuration
├── integration/                  # Integration test files (HTML)
│   ├── contact-form-7.test.html
│   ├── gravity-forms.test.html
│   └── generic-form.test.html
├── test-runner.html             # Browser test runner
├── MANUAL_TEST_CHECKLIST.md     # Manual testing checklist
├── package.json                 # Test dependencies
└── README.md                    # This file
```

## Writing Unit Tests

Unit tests use **Jasmine** framework. Create new spec files in `jasmine/spec/`.

### Example Test

```javascript
describe('My Module', function() {

  it('should do something', function() {
    const result = myFunction('input');
    expect(result).toBe('expected output');
  });

  it('should handle edge cases', function() {
    expect(myFunction(null)).toBe(null);
    expect(myFunction('')).toBe(null);
  });

});
```

### Running Specific Tests

```bash
# Run all tests
npm test

# Run specific spec file
npx jasmine jasmine/spec/utils.spec.js
```

## Writing Integration Tests

Integration tests are HTML files that simulate real form environments.

### Example Integration Test

```html
<!DOCTYPE html>
<html>
<head>
  <title>Platform Test</title>
</head>
<body>
  <!-- Simulate platform structure -->
  <form id="test-form">
    <input type="email" name="email" value="test@example.com">
    <input type="tel" name="phone" value="5551234567">
    <button type="submit">Submit</button>
  </form>

  <div class="success-message" style="display:none;">
    Thank you!
  </div>

  <script>
    window.dataLayer = window.dataLayer || [];

    // Assertions
    console.assert(platformDetected === 'expected', 'Platform detection failed');
    console.assert(emailFound === 'test@example.com', 'Email detection failed');

    // Form handler
    document.getElementById('test-form').addEventListener('submit', function(e) {
      e.preventDefault();
      document.querySelector('.success-message').style.display = 'block';

      // Verify dataLayer push
      setTimeout(function() {
        console.assert(dataLayer.length > 0, 'DataLayer push failed');
        console.log('✅ All assertions passed');
      }, 100);
    });
  </script>
</body>
</html>
```

### Running Integration Tests

1. Open HTML file in browser
2. Open DevTools console (F12)
3. Submit the form
4. Check console for assertion results

## Manual Testing

Use `MANUAL_TEST_CHECKLIST.md` for comprehensive manual testing.

### When to Run Manual Tests

- Before releasing new version
- After major code changes
- When adding new platform support
- After fixing critical bugs

### Manual Test Process

1. Import template into GTM workspace
2. Enable Debug Mode in template settings
3. Use GTM Preview mode
4. Test on real website or HTML test files
5. Complete checklist sections
6. Document failures and issues

## CI/CD Testing

GitHub Actions automatically runs tests on:
- Push to `main` or `develop` branches
- Pull requests to `main` or `develop`

### Workflow Steps

1. Checkout code
2. Install Node.js (v18, v20)
3. Install dependencies (`npm ci`)
4. Run unit tests (`npm test`)
5. Upload test results

### Viewing CI/CD Results

1. Go to GitHub repository
2. Click "Actions" tab
3. View workflow runs
4. Download test artifacts if needed

## Test Coverage Goals

| Module | Target Coverage |
|--------|----------------|
| Utils (validation, normalization) | 90%+ |
| Data Collection | 80%+ |
| Platform Detection | 70%+ |
| Deduplication | 90%+ |
| Overall | 80%+ |

## Adding Platform Tests

When adding a new platform, create:

1. **Unit test** for platform detection method
2. **Integration test** HTML file simulating platform
3. **Manual test** entry in checklist

### Example: Adding "NewPlatform"

1. Add to `jasmine/spec/platform-detection.spec.js`:
   ```javascript
   it('should detect NewPlatform', function() {
     // Mock platform detection
     window.NewPlatformGlobal = {version: '1.0'};
     expect(PlatformDetector.detect()).toBe('newplatform');
   });
   ```

2. Create `integration/newplatform.test.html`

3. Add to `MANUAL_TEST_CHECKLIST.md` Section 2

## Troubleshooting

### Tests fail with "module not found"

```bash
cd tests
npm install
```

### Browser tests don't run

- Check browser console for errors
- Ensure Jasmine CDN URLs are accessible
- Try different browser

### CI/CD tests fail but local tests pass

- Check Node.js version compatibility
- Review GitHub Actions logs
- Ensure `package-lock.json` is committed

## Best Practices

### Unit Tests

- ✅ Test one thing per test
- ✅ Use descriptive test names
- ✅ Test edge cases (null, undefined, empty)
- ✅ Mock external dependencies
- ❌ Don't test implementation details
- ❌ Don't rely on test execution order

### Integration Tests

- ✅ Simulate real platform structure
- ✅ Use console.assert() for verification
- ✅ Test complete flow (detection → collection → push)
- ❌ Don't test every edge case (use unit tests)

### Manual Tests

- ✅ Follow checklist exactly
- ✅ Document all failures
- ✅ Test on real websites when possible
- ✅ Test multiple browsers
- ❌ Don't skip sections
- ❌ Don't test in production GTM container

## Contributing

When contributing code:

1. Write unit tests for new functions
2. Add integration tests for new platforms
3. Update manual checklist if needed
4. Ensure all tests pass before submitting PR
5. Update test documentation

## Questions?

- Check existing test files for examples
- Read Jasmine documentation: https://jasmine.github.io/
- Create GitHub issue with `testing` label

---

**Last Updated**: 2026-01-28
**Test Framework**: Jasmine 5.0.0
