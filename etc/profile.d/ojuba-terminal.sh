##########################
## OJUBA TERMINAL 0.3 ####
##########################
## BY MOSAAB ALZOUBI #####
## UNDER WAQFv2 LICENSE ##
##########################

##A شروط التفعيل
detect="$(ps -p $(ps -p $(echo $$) -o ppid=) -o comm=)"
if ! [ "$OJUBA_TERM" = "0" ]; then
if ! [ "$already" = "true" ]; then
if ! [ "$detect" = "bicon.bin" ]; then
if tty -s ; then pass=OK
elif ! [ "`echo $detect | grep gnome`" = "" ]; then pass=OK
fi ; fi ; fi ; fi

##A التفعيل
if [ "$pass" = OK ]; then
export already="true"
exec bicon.bin "$@"
fi

#ِ#A الترحيب
wel="*** مرحبا بكم في أعجوبة ٣٨ ** إصدارة القدس ***"
echo -e "\033[1;31m$wel"
echo

##A الكتابة
if [ "$TERM" = linux ]; then
#setfont /usr/share/bicon/font/bicon-8x16-512.psfu.gz
source /usr/share/shell-lang/languages/ar
fi


##A إعدادات عامة
if [ $UID -eq 0 ] ; then
    PS1='\[$(tput setaf 1)\][\u@\h]\[$(tput bold ; tput setaf 5)\]>>[\W]#\[$(tput sgr0)\] '
else
    PS1='\[$(tput setaf 2)\][\u@\h]\[$(tput setaf 4)\]>>[\W]$\[$(tput sgr0)\] '
fi

complete -cf man
complete -cf sudo
complete -cf su
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls --color=auto'
[ -e ~/.pythonrc.py ] || echo -e 'import readline, rlcompleter; readline.parse_and_bind("tab: complete")' >~/.pythonrc.py
#alias python='export PYTHONSTARTUP=~/.pythonrc.py ; python'
#export LESS="-R"
# vim:ts=4:sw=4

man()
{ 
  # Less Colors for Man Pages:
  # _mb = begin blinking
  # _md = begin bold
  # _me = end mode
  # _se = end standout-mode
  # _so = begin standout-mode - info box
  # _ue = end underline
  # _us = begin underline
  env \
  LESS_TERMCAP_mb=$'\E[01;31m' \
  LESS_TERMCAP_md=$'\E[01;32m' \
  LESS_TERMCAP_me=$'\E[0m' \
  LESS_TERMCAP_se=$'\E[0m' \
  LESS_TERMCAP_so=$'\E[01;44;33m' \
  LESS_TERMCAP_ue=$'\E[0m' \
  LESS_TERMCAP_us=$'\E[01;04;34m' \
  man "$@" 
}
alias pss='ps af  | /bin/grep -v egrep | /bin/egrep --color=auto'
alias psg='ps aux | /bin/grep -v egrep | /bin/egrep --color=auto'
