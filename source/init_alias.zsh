function init_alias() {
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
                      }
