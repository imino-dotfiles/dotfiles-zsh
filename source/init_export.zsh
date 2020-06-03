function init_export() {
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
                       }
