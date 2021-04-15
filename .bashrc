# Disable terminal bell
	xset -b

# Aliases:
alias cp='cp -v'
alias mv='mv -v'
alias ln='ln -v'
alias rm='rm -v --preserve-root'
alias ls='ls -av --use color=always'
alias chown='chown -v'
alias chmod='chmod -v'
alias mkdir='mkdir -v'
alias mount='mount -v'
alias umount='umount -v'
alias tar='tar -v'
alias ls='ls --color=auto'
alias grep='grep --color=always'
alias shred='shred -v'
alias date='date +%A\,\ %B\ %d\,\ %Y\ \|\ %H\:%M\:%S\ %Z'

# Change the window title of X terminals 
case ${TERM} in
	xterm*|interix)
	PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
      ;;
  screen)
      PROMPT_COMMAND='echo -ne "XTerm: \033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
      ;;
esac

# PS1
if [[ ${EUID} == 0 ]] ; then
	export PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
	export PS1="\[\e[1;97m\][\[\e[1;93m\]\u\[\e[1;97m\]@\[\e[1;91m\]\h\[\e[1;97m\]]\[\e[1;34m\] \w \$\[\e[00m\] "
fi

# Default text editor
	export VISUAL=vi
	export EDITOR="$VISUAL"

# Bash History
	HISTSIZE= HISTFILESIZE= # Infinite history
