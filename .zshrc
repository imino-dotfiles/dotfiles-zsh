autoload -Uz colors ; colors
autoload -Uz compinit ; compinit

export EDITOR=nvim
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/usr/share/glib-2.0/schemas/:/var/lib/flatpak/exports/share"
export XDG_DATA_DIR='/usr/share/glib-2.0/schemas/:share/glib-2.0/schemas'
export GSETTINGS_SCHEMA_DIR='/var/lib/flatpak/exports/share'
export DOT_REPO="https://github.com/3u3i/dotfiles.git"
export DOT_DIR="$HOME/dotfiles"
export LC_CTYPE=en_US.UTF-8
export DOTFILES='~/dotfiles'
export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/nvidia_icd.json"
export XKB_DEFAULT_LAYOUT=jp
export NVIM="~/.config/nvim"
export REPOS="~/repos"

HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000

bindkey -v

setopt share_history
setopt hist_verify

setopt auto_pushd
setopt pushd_ignore_dups

setopt extended_glob

setopt auto_cd
setopt auto_param_keys

setopt correct_all
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/mumi/bin

alias ls='ls -a'
alias nvimconf="nvim $DOTFILES/neovim/init.vim"
alias deinconf="nvim $DOTFILES/neovim/dein.toml"
alias deinlazyconf="nvim $DOTFILES/neovim/dein_lazy.toml"
alias zshconf="nvim $DOTFILES/zsh/.zshrc"
alias polybarconf="nvim $DOTFILES/polybar/config"
alias swayconf="nvim $DOTFILES/sway/config"
alias hyperconf="nvim $DOTFILES/hyper/.hyper.js"
alias rcload='source ~/.zshrc'
alias update-grub='sudo grub-mkconfig -o /boot/EFI/grub/grub.cfg'
alias discord='flatpak run com.discordapp.Discord'
alias dotedit="cd $DOTFILES"
alias thedesk="snap run thedesk &"
alias xmonadupdate="xmonad --recompile && xmonad --restart"
alias dotcommit="cd $DOTFILES && git commit -a && cd -"
alias gitaddall="git add * .* *.*"
alias xclip="wl-copy"
alias gitsmup="git submodule foreach git pull origin master"
dotpush () {cd $DOTFILES && git push origin $1 && cd -}

PROMPT="%K{032}%F{084}%n at %d%f%k"$'\n'"%F{084}>%f"
RPROMPT='%*'

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi



source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

#zinit configuration
source $HOME/.zinit/bin/zinit.zsh

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit load zdharma/history-search-multi-word
zinit load ssh0/dot
zinit load knu/z

zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

#load starship
eval "$(starship init zsh)"
