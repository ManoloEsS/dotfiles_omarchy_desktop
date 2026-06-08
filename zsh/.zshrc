# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export VISUAL=nvim
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto  	# update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gh  command-not-found zsh-syntax-highlighting zsh-autosuggestions zsh-completions fzf-tab vi-mode)

source $ZSH/oh-my-zsh.sh
unset AUTO_NOTIFY_THRESHOLD

eval "$(fzf --zsh)"
# Enable transient prompt
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"
setopt dot_glob
setopt extended_glob

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
autoload -U zsh-newuser-install
# ======================
# Neovim/Vim Key Bindings
# ======================

# Enable vi-mode and set bindkey to viins (insert mode) by default
bindkey -v
export KEYTIMEOUT=1  # Reduce mode switch delay

# Normal mode bindings (ESC to enter normal mode)
bindkey -M vicmd '^k' up-line-or-history	# k for up
bindkey -M vicmd '^j' down-line-or-history  # j for down
bindkey -M vicmd 'h' backward-char     	# h for left
bindkey -M vicmd 'l' forward-char      	# l for right
bindkey -M vicmd '0' beginning-of-line 	# 0 for start of line
bindkey -M vicmd '^' beginning-of-line 	# ^ for start of line (non-blank)
bindkey -M vicmd '$' end-of-line       	# $ for end of line
bindkey -M vicmd 'b' backward-word     	# b for backward word
bindkey -M vicmd 'w' forward-word      	# w for forward word
bindkey -M vicmd 'e' forward-word      	# e for end of word
bindkey -M vicmd 'dd' kill-whole-line  	# dd to delete line
bindkey -M vicmd 'u' undo              	# u for undo
bindkey -M vicmd '^R' redo             	# Ctrl-R for redo

# Insert mode bindings
bindkey -M viins '^[' vi-cmd-mode      	# ESC to enter normal mode
bindkey -M viins '^W' backward-kill-word   # Ctrl-W to delete word backward
bindkey -M viins '^U' backward-kill-line   # Ctrl-U to delete line backward
bindkey -M viins '^A' beginning-of-line	# Ctrl-A to go to start of line
bindkey -M viins '^E' end-of-line      	# Ctrl-E to go to end of line

# Search history with / like in vim
bindkey -M vicmd '/' history-incremental-search-backward

# Make backspace work properly in insert mode
bindkey -M viins '^?' backward-delete-char

# Bind Ctrl+Y to accept autosuggestion
bindkey '^Y' autosuggest-accept
# ======================
# Additional Configuration
# ======================

# History settings
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select  # Changed to 'select' for vim-like menu navigation
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
# Aliases
if [[ "$TERM" == "xterm-kitty" ]]; then
  ff() { fzf --preview 'case $(file --mime-type -b {}) in image/*) kitty icat --clear --transfer-mode=memory --stdin=no --place=${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}@0x0 {} ;; *) bat --style=numbers --color=always {} ;; esac' "$@" }
else
  ff() { fzf --preview 'bat --style=numbers --color=always {}' "$@" }
fi
eff() { ${EDITOR:-nvim} "$(ff)" }
# Compression
compress() { tar -czf "${1%/}.tar.gz" "${1%/}"; }
alias decompress="tar -xzf"

# Write ISO to SD card/USB
iso2sd() {
  if (( $# < 1 )); then
    echo "Usage: iso2sd <input_file> [output_device]"
    echo "Example: iso2sd ~/Downloads/ubuntu.iso /dev/sda"
    return 1
  fi
  local iso="$1" drive="$2"
  if [[ -z $drive ]]; then
    drive=$(lsblk -dpno NAME | grep -E '/dev/sd' | fzf --prompt="Select drive: ") || { echo "No drive selected"; return 1; }
  fi
  sudo dd bs=4M status=progress oflag=sync if="$iso" of="$drive"
  sudo eject "$drive"
}

# Format drive as exFAT
format-drive() {
  if (( $# != 2 )); then
    echo "Usage: format-drive <device> <name>"
    echo "Example: format-drive /dev/sda 'My Stuff'"
    return 1
  fi
  echo "WARNING: This will completely erase all data on $1"
  read -rq"?Are you sure? (y/N): " || { echo; return 1; }
  echo
  sudo wipefs -a "$1"
  sudo dd if=/dev/zero of="$1" bs=1M count=100 status=progress
  sudo parted -s "$1" mklabel gpt
  sudo parted -s "$1" mkpart primary 1MiB 100%
  sudo parted -s "$1" set 1 msftdata on
  local partition="$([[ $1 == *"nvme"* ]] && echo "${1}p1" || echo "${1}1")"
  sudo partprobe "$1" || true
  sudo udevadm settle || true
  sudo mkfs.exfat -n "$2" "$partition"
  echo "Drive $1 formatted as exFAT and labeled '$2'."
}

# SSH port forwarding
fip() {
  (( $# < 2 )) && { echo "Usage: fip <host> <port1> [port2] ..."; return 1; }
  local host="$1"; shift
  for port in "$@"; do
    ssh -f -N -L "$port:localhost:$port" "$host" && echo "Forwarding localhost:$port -> $host:$port"
  done
}
dip() {
  (( $# == 0 )) && { echo "Usage: dip <port1> [port2] ..."; return 1; }
  for port in "$@"; do
    pkill -f "ssh.*-L $port:localhost:$port" && echo "Stopped forwarding port $port" || echo "No forwarding on port $port"
  done
}
lip() { pgrep -af "ssh.*-L [0-9]+:localhost:[0-9]+" || echo "No active forwards"; }

# Git worktrees
unalias ga 2>/dev/null
ga() {
  [[ -z "$1" ]] && { echo "Usage: ga <branch>"; return 1; }
  local branch="$1" base="$(basename "$PWD")" wt_path="../${base}--${branch}"
  git worktree add -b "$branch" "$wt_path"
  mise trust "$wt_path"
  cd "$wt_path"
}
unalias gd 2>/dev/null
gd() {
  if gum confirm "Remove worktree and branch?"; then
    local cwd="$(pwd)" worktree="$(basename "$cwd")" root branch
    root="${worktree%%--*}"
    branch="${worktree#*--}"
    if [[ "$root" != "$worktree" ]]; then
      cd "../$root"
      git worktree remove "$cwd" --force || return 1
      git branch -D "$branch"
    fi
  fi
}

alias ls='lsd'
alias vim='nvim'
alias c='clear'
alias lazyvim='~/.local/bin/lazyvim'

# Shell integrations


export OMARCHY_PATH=$HOME/.local/share/omarchy
export PATH=$OMARCHY_PATH/bin:$HOME/.local/bin:$PATH
export BAT_THEME=ansi
export MANROFFOPT="-c"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tlaloch/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ $- == *i* ]] && eval "$(zoxide init --cmd cd zsh)"


# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

alias tmc='/home/tlaloch/mooc/tmc-cli-rust-x86_64-unknown-linux-gnu-v1.1.2'
export TMC_LANGS_CONFIG_DIR='/home/tlaloch/tmc-config'
fpath=(/home/tlaloch/.local/share/tmc-autocomplete/_tmc  $fpath)
compdef _tmc tmc
# source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.local/opt/go/bin
source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# opencode
export PATH=/home/tlaloch/.opencode/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

# NVM - disabled in favor of mise
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(mise activate zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/tlaloch/google-cloud-sdk/path.zsh.inc' ]; then . '/home/tlaloch/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/tlaloch/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/tlaloch/google-cloud-sdk/completion.zsh.inc'; fi

# Turso
export PATH="$PATH:/home/tlaloch/.turso"

# SSH agent and key
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)" > /dev/null
fi
ssh-add ~/.ssh/id_ed25519 2>/dev/null

. "$HOME/.local/share/../bin/env"

# Added by flyctl installer
export FLYCTL_INSTALL="/home/tlaloch/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
export PATH=$PATH:$HOME/.local/bin

# bun completions
[ -s "/home/tlaloch/.bun/_bun" ] && source "/home/tlaloch/.bun/_bun"
