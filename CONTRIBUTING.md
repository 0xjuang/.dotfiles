# Contributing Guidelines · dotfiles @0xjuang

This repository follows structured standards for commits and versioning to maintain clarity, reproducibility, and clean history.

---

## ✅ Commit Message Conventions

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

### Format
```bash
<type>: <short, present-tense description>
```

### Common Types
| Type        | Purpose                                        |
|-------------|------------------------------------------------|
| `feat:`     | New feature (e.g., new config file, alias)     |
| `fix:`      | Bug fix or broken logic                        |
| `docs:`     | Documentation updates (README, VERSIONING.md) |
| `style:`    | Formatting only (no logic change)              |
| `refactor:` | Restructure without feature/fix change         |
| `chore:`    | Repo maintenance (setup, renaming, tagging)    |
| `test:`     | Add or update tests (if applicable)            |

### Example
```bash
git commit -m "chore: initial dotfiles setup with zsh, vim, and aliases"
```

---

## 📦 Versioning Strategy

This project uses **semantic versioning** (see: `VERSIONING.md`).

- Tag format: `v<MAJOR>.<MINOR>.<PATCH>`
- Push tags with:
```bash
git tag -a v1.0.0 -m "Initial public dotfiles release"
git push origin --tags
```

---

## 🔒 Public Safety Notes

- No secrets, personal keys, or credentials should ever be committed
- Use redacted templates for `.ssh_config` and other sensitive configs
- Avoid exposing real internal IPs or usernames

---

## 🧠 Best Practices

- Keep commits atomic — one purpose per commit
- Include relevant context in commit messages
- Reference versions and use tags for meaningful milestones

---

For questions, open an issue or reach out to [info.gg3.dev](https://info.gg3.dev).

