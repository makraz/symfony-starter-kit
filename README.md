# Symfony Starter Kit

This repository serves as a robust starting point for building modern web applications using Symfony and DDEV. It comes pre-configured to optimize development efficiency, reduce setup time. 💪

## Pre-requirements
Before setting up this project, ensure you have the following tools installed on your local machine:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (required for DDEV)
- [DDEV](https://ddev.readthedocs.io/en/stable/) (latest version recommended)
- [Git](https://git-scm.com/)

---

## Installation Steps
Follow these steps to get your Symfony project up and running with DDEV:

### 1. Clone the Repository
```bash
git clone https://github.com/makraz/symfony-starter-kit.git
cd symfony-starter-kit
```

### 2. Configure DDEV
Ensure the DDEV configuration file (`.ddev/config.yaml`) looks like this:

```yaml
name: symfony-starter-kit
type: symfony
docroot: public
php_version: "8.4"
webserver_type: nginx-fpm
xdebug_enabled: false
additional_hostnames: []
additional_fqdns: []
database:
    type: mariadb
    version: "10.11"
use_dns_when_possible: true
composer_version: "2"
web_environment:
    - PHP_CS_FIXER_IGNORE_ENV=1
corepack_enable: false
```

### 3. Start DDEV
Run the following command to start the DDEV environment:
```bash
ddev start
```

### 4. Install Symfony Dependencies
Inside the DDEV container, run:
```bash
ddev composer install
```

### 5. Access Your Application
```bash
ddev launch
```

### 6. Run Migrations (if any)
```bash
ddev php bin/console doctrine:migrations:migrate
```

---

## Git Convention
Following a consistent Git workflow is essential for project maintainability. Below are the conventions used in this project:

### Branch Types
| Branch Type       | Naming Convention                                      | Description                    |
|-------------------|--------------------------------------------------------|--------------------------------|
| Feature           | `feature/<TASK_ID>-<short-description>`                | New features or improvements   |
| Release           | `release/<release_version>`                            | Preparing a new release        |
| Hotfix            | `hotfix/<short_hotfix_description>`                    | Quick fixes for production     |

#### Example Branch Names:
- `feature/1234-add-login-functionality`
- `release/1.0.0`
- `hotfix/fix-authentication-issue`

### Commit Message Format
We follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) standard:

```
<type>: <description>
```

#### Accepted Types:
| Type       | Description                                               |
|------------|-----------------------------------------------------------|
| `feat`     | Adds new functionality                                    |
| `fix`      | Fixes bugs/errors                                         |
| `docs`     | Updates documentation                                     |
| `refac`    | Code refactoring without changing external behavior       |
| `style`    | Code style changes (formatting, white-space, etc.)        |
| `test`     | Adds or updates tests                                     |
| `ops`      | Changes related to infrastructure or deployment           |
| `chore`    | Routine tasks (e.g., dependency updates)                  |
| `deprecate`| Marks functionality as deprecated                        |
| `release`  | Commits related to a new version release                  |

#### Breaking Changes
If a commit introduces a breaking change, append a `!` after the type. For example:
```
fix!: updated return type of method
```

### Example Commit Messages:
- `feat: add user registration feature`
- `fix: resolve SQL injection vulnerability`
- `docs: update API documentation`
- `refac: optimize query performance`

### Amending Commits
If you need to modify your last commit, use the following commands:
```bash
git commit --amend
```
To amend without changing the commit message:
```bash
git commit --amend --no-edit
```
After amending, push the updated commit with:
```bash
git push -f origin <branch_name>
```

### Code Review Process
After completing a feature, create a Pull Request (PR) for code review. Ensure the PR is atomic and focused on a single feature or fix.

---

## References
For more information on best practices in Git and version control, check out the following resources:
- https://www.atlassian.com/git/tutorials/what-is-version-control
- https://www.freecodecamp.org/news/how-to-use-git-best-practices-for-beginners/
- https://about.gitlab.com/topics/version-control/version-control-best-practices/- https://www.conventionalcommits.org/en/v1.0.0/- https://developers.google.com/blockly/guides/contribute/get-started/commits
- https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13
- https://patrykkosieradzki.medium.com/best-git-practices-for-managing-your-project-60db33b44830
- https://acompiler.com/git-best-practices/

