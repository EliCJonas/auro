# <p align="center">auro</p>

<p align="center">
  <a href="https://vibescale.github.io/#2">
    <img src="https://vibescale.github.io/badge-bar/2.svg" alt="2/6 AI-Assisted | Vibescale" />
  </a>
</p>

<p align="center">
  <i>A small package manager built to make distributing software on Linux easier.</i>
</p>

---

# .keg format
The .keg format contains the following:
 - Shared Libraries
 - .desktop files
 - Icons
 - Application data
 - Binaries

An example keg for the app Gophie:

```
.
├── data
├── desktop
│   └── gophie.desktop
├── Gophie
├── icons
│   └── gophie.png
├── keg-name.txt
└── lib
```

To update, simply run install.sh again.

---

## Repository Management

Auro supports multiple package repositories. The built-in default repository is `http://aurorepo.runbsd.io/pkgs`.

### Adding a Repository
```bash
auro add-repo <name> <url>
```

- `<name>`: A unique name for the repository (alphanumeric, underscore, hyphen only)
- `<url>`: The base URL of the repository (must start with http:// or https://)

Example:
```bash
auro add-repo myrepo https://example.com/auro-repo
```

### Removing a Repository
```bash
auro remove-repo <name>
```

The built-in `default` repository cannot be removed.

### Viewing Configured Repositories
The configuration is stored at `~/.keg/repositories.conf` with tab-separated `name\turl` entries. You can view it with:
```bash
cat ~/.keg/repositories.conf
```

### How Package Resolution Works
When running `auro repo <package...>`, auro searches repositories in this order:
1. The built-in `default` repository (always first)
2. User-added repositories in the order they appear in the config file

The first repository containing the requested package supplies it (first-match-wins).
