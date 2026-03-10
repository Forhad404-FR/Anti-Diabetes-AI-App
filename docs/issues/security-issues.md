# Security Considerations

Since this app handles sensitive health data, security is a top priority.

## 1. Authentication Security
- **Goal**: Transition from `FakeAuthService` to secure token-based authentication.
- **Implementation**: Store JWT tokens in secure encrypted storage (via `flutter_secure_storage`).

## 2. Data Privacy
- **Goal**: Ensure health data is never leaked or accessed by unauthorized third parties.
- **Action**: Encrypt local databases and use HTTPS for all network communication.

## 3. Secure Coding Practices
- **Goal**: Prevent common mobile vulnerabilities.
- **Action**: Avoid hardcoding keys or secrets in the repo; use `.env` files or CI/CD secrets for API keys.

## 4. Biometric Auth (Future)
- **Goal**: Add Fingerprint/FaceID login.
- **Action**: Research and integrate `local_auth` package.
