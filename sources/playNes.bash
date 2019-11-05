_completions_playNes(){
  roms=""
  cd $HOME/Games/nes/
  for rom in * ; do
    if [ ! -d "${rom}" ] ; then
      roms=$roms" $rom"
	fi
  done
  if [[ $COMP_CWORD < 2 ]] ; then
    COMPREPLY=($(compgen -W "$roms" "${COMP_WORDS[1]}"))
  else
    COMPREPLY=($(compgen -W "" "${COMP_WORDS[1]}"))
  fi
}

complete -F _completions_playNes playNes
