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
