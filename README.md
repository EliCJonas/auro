# auro
A small package manager built to make distributing software on Linux easier.

[![2/6 AI-Assisted | Vibescale](https://vibescale.github.io/badge/2.svg)](https://vibescale.github.io/#2)

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
