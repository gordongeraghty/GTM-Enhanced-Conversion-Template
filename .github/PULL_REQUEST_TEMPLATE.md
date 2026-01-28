## Description

Brief description of the changes in this PR.

## Type of Change

- [ ] Bug fix (non-breaking change fixing an issue)
- [ ] New feature (non-breaking change adding functionality)
- [ ] Breaking change (fix or feature causing existing functionality to not work as expected)
- [ ] Documentation update
- [ ] Performance optimization
- [ ] New platform support
- [ ] Code refactoring
- [ ] Testing improvement

## Testing Checklist

### Manual Testing

- [ ] Tested in GTM Preview mode
- [ ] Verified dataLayer push occurs correctly
- [ ] Checked debug logs for errors
- [ ] Tested on target platform (if platform-specific)
- [ ] Tested email validation
- [ ] Tested with empty/invalid fields
- [ ] Verified no JavaScript errors in console

### Platform Testing (if applicable)

- [ ] Platform detection works correctly
- [ ] Field detection finds email/phone/names
- [ ] Trigger fires at correct time
- [ ] Data normalization works (email lowercase, phone E.164)
- [ ] Success selector works reliably

### Cross-Browser Testing (if applicable)

- [ ] Chrome
- [ ] Firefox
- [ ] Safari
- [ ] Edge

## Documentation

- [ ] Updated CHANGELOG.md under `[Unreleased]`
- [ ] Updated PLATFORM_SUPPORT.md (if new platform)
- [ ] Updated README.md (if needed)
- [ ] Updated TEMPLATE_GUIDE.md (if configuration changed)
- [ ] Added/updated code comments
- [ ] Created test file (if new platform)

## Screenshots (if applicable)

Add screenshots of:
- GTM Preview mode showing tag firing
- Browser console with debug logs
- DataLayer tab showing pushed data
- Success message detection (if relevant)

## Performance Impact

- [ ] No performance impact
- [ ] Performance improvement (describe below)
- [ ] Minimal performance cost (justified by feature value)

**Details**:

## Breaking Changes

Does this PR introduce breaking changes?

- [ ] No breaking changes
- [ ] Yes, breaking changes (describe below with migration path)

**If breaking changes**:
- What breaks:
- Why necessary:
- Migration path for users:
- Version bump required: [major/minor/patch]

## Related Issues

Closes #
Fixes #
Related to #

## Checklist

- [ ] My code follows the style guidelines of this project
- [ ] I have performed a self-review of my code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings or errors
- [ ] I have tested this thoroughly in GTM Preview mode
- [ ] All new and existing tests pass
- [ ] I have checked my code for console errors

## Additional Notes

Any other context about the PR:
- Implementation decisions made
- Alternative approaches considered
- Known limitations
- Future improvements planned
