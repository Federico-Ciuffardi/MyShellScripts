_completions_cdfac(){
  folders=""
  cd /home/fede/Drive/facultad/
  for semestre in * ; do
    if [ -d "${semestre}" ] ; then
      folders=$folders" $semestre/"
      if [[ "${COMP_WORDS[1]}" =~ $semestre/.* ]] ; then
      	for curso in "$semestre"/* ; do
          if [ -d "${curso}" ] ; then
            folders=$folders" $curso/"
          fi
      	done
      fi
	fi
  done
  if [[ $COMP_CWORD < 2 ]] ; then
    COMPREPLY=($(compgen -W "$folders" "${COMP_WORDS[1]}"))
  else
    COMPREPLY=($(compgen -W "" "${COMP_WORDS[1]}"))
  fi
}

complete -o nospace -F _completions_cdfac cdfac
