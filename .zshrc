: main && {

          source ./source/init_autoload
          source ./source/init_export
          source ./source/init_alias
          source ./source/init_misc
          source ./source/init_zinit
  
          #load starship
          eval "$(starship init zsh)"
          
          }
