**`install.sh`**
```bash
#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

link_file() {
    local src="$1"
    local dst="$2"

    mkdir -p "$(dirname "$dst")"

    if [ -e "$dst" ] || [ -L "$dst" ]; then
        mkdir -p "$BACKUP_DIR"
        mv "$dst" "$BACKUP_DIR/"
        echo "Respaldo guardado: $dst -> $BACKUP_DIR/"
    fi

    ln -s "$src" "$dst"
    echo "Enlazado: $dst -> $src"
}

echo "Aplicando config desde $DOTFILES_DIR..."

link_file "$DOTFILES_DIR/i3/config" "$HOME/.config/i3/config"
link_file "$DOTFILES_DIR/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"
link_file "$DOTFILES_DIR/micro/settings.json" "$HOME/.config/micro/settings.json"
link_file "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"

echo "OK. Reinicia i3 y abre una nueva terminal"
