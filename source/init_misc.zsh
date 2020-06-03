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
