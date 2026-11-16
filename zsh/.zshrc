# Historial limpio y sin duplicados
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# Autocompletado nativo rápido
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
compinit

# Prompt minimalista con rama de Git
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %F{yellow}(%b)%f'
setopt PROMPT_SUBST
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f${vcs_info_msg_0_} %# '

# Variables de entorno y soporte Flatpak
export EDITOR="micro"
export VISUAL="micro"
export PATH="$HOME/.local/bin:/var/lib/flatpak/exports/bin:$HOME/.local/share/flatpak/exports/bin:$PATH"
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"

# Navegación y utilidades
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# Herramientas TUI y desarrollo
alias lg='lazygit'
alias zj='zellij'
alias m='micro'
alias py='python3'

# Administración Debian
alias update='sudo apt update && sudo apt upgrade -y'
alias clean='sudo apt autoremove -y && sudo apt autoclean'
