# Branching Strategy

The Anti-Diabetes AI App follows a simplified Git Flow approach for source control.

## Main Branches

### `main`
The stable branch containing production-ready code. Commits should only come from merged Pull Requests (PRs).

### `develop`
The primary integration branch. All feature branches merge here first.

## Supporting Branches

### Feature Branches (`feature/`)
Used for new development.
- **Naming**: `feature/short-description` (e.g., `feature/ai-chat-ui`)
- **Merge into**: `develop`

### Bug Fix Branches (`fix/`)
Used for quick patches and bug fixes.
- **Naming**: `fix/bug-description` (e.g., `fix/login-overflow`)
- **Merge into**: `develop` or `main` (if critical)

## Workflow

1. **Pull** the latest changes from `develop`.
2. **Create** a new branch: `git checkout -b feature/auth-fix`.
3. **Commit** changes frequently with descriptive messages.
4. **Push** to the origin: `git push origin feature/auth-fix`.
5. **Open** a Pull Request against the `develop` branch.
6. **Merge** after successful code review and CI checks.
