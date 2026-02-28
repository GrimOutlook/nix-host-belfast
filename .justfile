hostname := "taipei"
nix-config-local := "/home/grim/nix-config"
nix-host-justfile-url := \
  "https://raw.githubusercontent.com/GrimOutlook/nix-config/main/just/nix-host.just"

default:
  just --list

import? ".just/nix-host.just"

fetch:
  mkdir -p .just/
  curl {{nix-host-justfile-url}} --output .just/nix-host.just
