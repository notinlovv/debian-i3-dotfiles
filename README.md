# debian-i3-dotfiles

Configuración estrictamente minimalista para **Debian 13 (Trixie)** con **i3wm**: sin barra de estado, sin bordes (`pixel 0`), sin gaps y orientada 100% a atajos de teclado y herramientas TUI.

## Stack del entorno
- **OS:** Debian GNU/Linux 13 (Trixie)
- **Window Manager:** i3wm (barless, zero-gaps, borderless)
- **Compositor & Wallpaper:** Picom + feh
- **Terminal & Shell:** Alacritty + Zsh + Zellij
- **Editores & Git:** micro / fresh + lazygit
- **Launcher & Utilidades:** Rofi, PCManFM, maim + xclip, i3lock

## Atajos principales (`Mod4` / Super)
| Atajo | Acción |
| :--- | :--- |
| `Super + Enter` | Abrir Alacritty |
| `Super + d` | Lanzador de aplicaciones (`rofi`) |
| `Super + f` | Gestor de archivos (`pcmanfm`) |
| `Super + Shift + s` | Captura de área al portapapeles (`maim` + `xclip`) |
| `Super + Shift + x` | Bloquear pantalla (`i3lock`) |
| `Super + 1..5` | Cambiar entre espacios de trabajo |
| `Super + Shift + q` | Cerrar ventana activa |

## Instalación rápida

```bash
git clone [https://github.com/notinlovv/debian-i3-dotfiles.git](https://github.com/notinlovv/debian-i3-dotfiles.git) ~/.dotfiles
cd ~/.dotfiles
chmod +x install.sh
./install.sh
