_completions_myapt(){
  packs=""
  cd $HOME/.myapt/
  for pack in * ; do
    if [ ! -d "$pack" ] ; then
      packs=$packs" $pack"
	fi
  done
  COMPREPLY=($(compgen -W "$packs" "${COMP_WORDS[1]}"))
}

complete -F _completions_myapt myapt
