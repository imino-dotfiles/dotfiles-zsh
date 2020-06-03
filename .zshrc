for init in ./source/* ; do 
    source $init
done;

: main && {

          init_autoload()
          init_export()
          init_alias()
          init_misc()
          init_zinit()
  
          #load starship
          eval "$(starship init zsh)"
          
          }
