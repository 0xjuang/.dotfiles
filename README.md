# dotfiles · @0xjuang
🗃 Reproducible system config for macOS & Linux – tuned for clarity, security, and DevOps workflows.

![version](https://img.shields.io/badge/version-v1.0.0-blue)

---

## 📁 Included Configs

| File / Folder             | Purpose                                               |
|---------------------------|--------------------------------------------------------|
| `.zshrc`                  | Core shell config                                     |
| `.zsh_aliases`            | Modular aliases for common commands                   |
| `gg3.zsh-theme`           | Custom ZSH prompt theme                               |
| `.vimrc`                  | Vim editor preferences                                |
| `.gitconfig`              | Git CLI configuration (user & aliases)                |
| `ssh_config.example`      | Redacted SSH config template for GitHub use           |
| `.vscode/settings.json`   | Visual Studio Code settings                           |
| `.vscode/extensions.list` | VS Code extensions for tooling and workflow           |
| `install.sh`              | Setup script to symlink all configs into `$HOME`      |

---

## 📦 Requirements

- ZSH (v5+)
- [Oh My Zsh](https://ohmyz.sh)
- Powerline-compatible font (for gg3.zsh-theme)

---

## ⚙️ Installation

> Requires [Oh My Zsh](https://ohmyz.sh) installed.

Clone and install:
```bash
git clone git@github.com:0xjuang/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
chmod +x install.sh
./install.sh
```

This will back up your existing configs and symlink these dotfiles into your `$HOME` directory.

---

## 🔐 Safe for Public Use

Sensitive information has been excluded or redacted:
- `.ssh_config` is provided as `ssh_config.example`
- Git email is generic
- No tokens, keys, or secrets are tracked

---

## 📎 Related Repos

- [gg3-docs](https://github.com/gg3-dev/gg3-docs) – Homelab documentation
- [GG3-DevNet](https://github.com/gg3-dev) – Private infrastructure & automation tooling

---

## 👤 Author

Created by **Juan Garcia** (`@0xjuang`)  
Systems Engineer · DevOps · Infrastructure-as-Code · CEH Candidate  
[info.gg3.dev](https://info.gg3.dev)

---

_Curated for clarity, security, and reproducibility._
