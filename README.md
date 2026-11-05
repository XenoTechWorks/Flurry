# Flurry

A software shop for NixOS and NixOS-based systems, written in Vala (GTK4 + libadwaita).

- Searches **nixpkgs** (through Nix *or* Lix), **Flathub** and the **Snap Store** together; each app shows once.
- Nix apps install into your own profile with no rebuild. With [ANIX](https://github.com/XenoTechWorks/ANIX) you can instead add an app to the system config as one rolled-back-on-failure change.
- Installed and Updates tabs, with Update All across every source.
- Switch between Nix and Lix in Preferences (needs ANIX; on plain NixOS it shows the line to add).

## Try it
    nix run github:XenoTechWorks/Flurry

## Install on NixOS
    inputs.flurry.url = "github:XenoTechWorks/Flurry";
    # then: environment.systemPackages = [ inputs.flurry.packages.${pkgs.system}.default ];

## Build
    nix develop && meson setup build && ninja -C build

Status: early (0.1.0). Licensed GPL-3.0-or-later. Also developed inside [Abora OS](https://github.com/AnimatedGTVR/Abora-OS).
