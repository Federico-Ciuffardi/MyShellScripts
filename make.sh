case "$1" in 
  install)
    cd autocomplete/zsh
    for file in * ; do
      cp $file /usr/share/zsh/site-functions
    done
  ;;
  uninstall)
    cd autocomplete/zsh
    for file in * ; do
      rm /usr/share/zsh/site-functions/$file
    done
  ;;
  *)
    echo "Missing directive"
  ;;
esac
