scr#!/usr/bin/env bash
set -euo pipefail

theme="${1:-ananke}"
mode="${2:-serve}"

case "$theme" in
  ananke|hextra|console)
    ;;
  *)
    echo "Unknown theme: $theme"
    echo "Usage: ./scripts/theme.sh [ananke|hextra|console] [serve|build]"
    exit 1
    ;;
esac

case "$mode" in
  serve)
    exec hugo server --buildDrafts --disableFastRender --config hugo.toml,config/themes/${theme}.toml
    ;;
  build)
    exec hugo --config hugo.toml,config/themes/${theme}.toml
    ;;
  *)
    echo "Unknown mode: $mode"
    echo "Usage: ./scripts/theme.sh [ananke|hextra|console] [serve|build]"
    exit 1
    ;;
esac
