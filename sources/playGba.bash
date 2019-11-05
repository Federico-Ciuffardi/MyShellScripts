_completions_playGba(){
  roms=""
  cd $HOME/Games/gba/
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

complete -F _completions_playGba playGba
