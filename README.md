<div align="center">

<img src="data/icons/app/io.github.AnimatedGTVR.Flurry.svg" width="120" alt="Flurry icon">

# Flurry

**Every app, every source.**
A software shop for NixOS and NixOS-based systems.

[![NixOS](https://img.shields.io/badge/NixOS-flake-5277C3?logo=nixos&logoColor=white)](https://nixos.org)
[![GTK4](https://img.shields.io/badge/GTK4-libadwaita-4a86cf?logo=gnome&logoColor=white)](https://gnome.pages.gitlab.gnome.org/libadwaita/)
[![Written in Vala](https://img.shields.io/badge/written%20in-Vala-7239b3)](https://vala.dev)
[![License](https://img.shields.io/badge/license-GPL--3.0--or--later-green)](LICENSE)

</div>

---

## ✨ Features

| | |
|---|---|
| 🔎 **One search** | nixpkgs, Flathub and the Snap Store together; each app shows once |
| ⚡ **No rebuild** | Nix apps install into your own profile instantly |
| 🛡️ **Safe system installs** | With [ANIX](https://github.com/XenoTechWorks/ANIX), add an app to the system config as one change that rolls back if it fails |
| 🔁 **Nix or Lix** | Pick your package manager in Preferences |
| 🔄 **Update all** | Updates every source from one tab |
| 🎨 **Native look** | GTK4 and libadwaita, light and dark, works at phone width |

## 🚀 Try it

```sh
nix run github:XenoTechWorks/Flurry
```

## 📥 Install on NixOS

```nix
inputs.flurry.url = "github:XenoTechWorks/Flurry";
# environment.systemPackages = [ inputs.flurry.packages.${pkgs.system}.default ];
```

## 🔧 Build

```sh
nix develop
meson setup build && ninja -C build
```

## 🌱 Status

Early (0.1.0). Snap works only where `snapd` runs, which NixOS usually doesn't have, so that source switches itself off.

<div align="center"><sub>GPL-3.0-or-later · also developed inside <a href="https://github.com/AnimatedGTVR/Abora-OS">Abora OS</a></sub></div>
