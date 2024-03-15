# ==============================================================================
# Aliases
#
# create alias
# alias name=value
# alias name='command'
# alias name='command arg1 arg2'
# alias name='/path/to/script'
# alias name='/path/to/script.sh arg1'
# ==============================================================================

# if user is not root, pass all commands via sudo
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo apt-get update && sudo apt-get upgrade'
    alias nautilus='sudo nautilus'
    alias root='sudo -i'
    alias su='sudo -i'
    alias apt='sudo apt'
fi

# Colorize the ls output
alias ls='ls -AlhF --color=auto'
alias sl="ls"

# Use a long listing format
alias ll='ls -laF'

# Show hidden files
alias l.='ls -d .* --color=auto'

# get rid of command not found
alias cd..='cd ..'

# a quick way to get out of current directory
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# Colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Start calculator with math support
alias bc='bc -l'

# Command short cuts to save time
alias h='history'
alias j='jobs -l'
alias n='nano'
alias p='pwd'

# Create a new set of commands
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# Control output of networking tool called ping
alias pingy='ping ya.ru'

# confirmation
# alias mv='mv -i'
# alias cp='cp -i'
# alias ln='ln -i'

# clear screen
alias c='printf "\033c"; clear'
alias cls='printf "\033c"; clear;'

# test mic
alias testmic='arecord -f cd -d 10 test-mic.wav; aplay test-mic.wav'

# Git commands
alias gr='git reset --hard; git clean -df'
alias grm='git reset --hard origin/master; git clean -df'
alias gru='git reset --hard origin/master; git clean -df; git fetch; git pull origin master'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '

# Other aliases
alias :q='exit'
alias cx='chmod +x'

# Plugin aliases
# npm -g browser-sync install
alias br='browser-sync start --server --files "php/*.php,css/*.css,js/*.js,html/*.html,*.*"'
# npm -g sass install
alias sa='sass .:. --style compressed --no-source-map'
alias sam='sass .:. --style compressed'

# Old aliases
# Switch node XX --> node 14
# source /usr/share/nvm/init-nvm.sh && nvm use 14.20.1
# Switch python 3 --> python 2
# export PATH=~/bin:$PATH

# Connection aliases
# alias dsf=Connect_Soft
# alias drs=Connect_Other
# alias cnf='ssh -AYv <login>@<server> -p <port>'


# ==============================================================================
# Functions
# ==============================================================================

# ssh connection & run script on remote rep
# function Connect_Soft {
#   Commands_Soft='sh path_on_server/some-script.sh;'
#   ssh -AYv login@ip -p 0000 $Commands_Soft
# }

# ssh connection & git commands & run bash on server
# function Connect_Other {
#   Commands_Simple='cd /path_on_server/; git reset --hard; git reset HEAD --hard; git clean -df; git checkout master; git reset --hard origin/master; git fetch; git pull origin master; echo "task: task#"; read -r taskId; echo "task: $taskId"; git fetch origin "task#$taskId"; git pull -ff origin "task#$taskId"; composer install; ln -s /path_on_server/isdev.php isdev.php; git status; pwd; /bin/bash;'
#   Commands_Simple='cd /path_on_server/; git reset --hard; git clean -df; git checkout master; git reset --hard origin/master; git clean -df; git fetch; git pull origin master; echo "task: task#"; read -r taskId; echo "task: $taskId"; git fetch origin "task#$taskId"; git pull -ff origin "task#$taskId";'
#   ssh dulale@gw.rarus-crimea.ru -p 22160 $Commands_Rarus
# }


# ==============================================================================
# Color table
# ==============================================================================

# colors() { echo -e "\e[40m\e[1;4;38mСolors:\e[0m"; for (( j = 0; j < 8; j++ )); do for (( i = 0; i < 8; i++ )); do
# echo -en "\e[4"$j"m\e[3"$i"m"$1"\e[10"$j"m\e[3"$i"m"$1"\e[4"$j"m\e[9"$i"m"$1"\e[10"$j"m\e[9"$i"m"$1"";
# done; echo -e "\e[0m "; done }; colors "▞▞▞▞▞"; colors " ░▒▓█";


# ==============================================================================
# Banner
# ░▒▓█▖▗▘▙▚▛▜▝▞▟▀▄▔▕▐▁▂▃▄▅▆▇█▉▊▋▌▍▎▏■⌜⌝⌞⌟♥♦°⋄◇○·•◆●◊⟪⟫⟨⟩╱╲╳_‗
# ─│├┤┼┬┴┌┐└┘╭╮╰╯╴╵╶╷═║╠╣╬╦╩╞╟╡╢╪╫╒╓╔╕╖╗╘╙╚╛╜╝╤╥╧╨╌╍┄┅┈┉╎╏┆┇┊┋╸╹╺╻━┃┣┫┏┓┗┛╋┳┻
# .:;!/r(l1IZ4X$9H0W8@
# ==============================================================================

stringsArr=(
"        o       .                                           _    o             "
"      °   .      O                                         (_)  .              "
"        o      ° _                                          | o                "
"      _O     o  (_)    ______________                       : _O °             "
"     (_ )°     (  )   ╱              ╲                      !(  )              "
"      (_)   O   (_)  ⟨ Happy hacking! ⟩                     : (_)              "
"       |         .    ╲_________ ____╱             _        .  !               "
"    _  :  _   _  :      _       ╲▏ _      []─,  _ (_)      ______              "
"   (_)─' (_) (_)─'     (_) _      (_)         ╲(_)╱        │{;'}│╲             "
"   ╱│╲╱   │╲ ╱│╲      ╱ │╲╱       ││╲          ╲│╱  O      │____│_▏    ^_^     "
"   ╲│  []─│╱ ╲│╱     '─[]      []─'│╱_          │   |     ╤╧════╧╧╤  >(-.o)<   "
"    │╲   ╱│  ╱│         │╲        ╱│            │╲  ╘═╤══ │       │   < < )    "
"  ‗‗│╱‗‗‗╲│‗‗▏│‗‗‗‗‗‗‗‗‗│‗▏‗‗‗‗‗‗‗▏│‗‗‗‗‗‗‗‗‗‗‗‗│‗▏‗.─┼─.‗│‗‗‗‗‗‗‗│‗‗‗(‗│‗)‗‗  "
" ║  __   __ __ __ __   __ __ __ __   __ __ __ __    __ __ __                 ║ "
" ║ │Es│ │f1│f2│f3│f4│ │f5│f6│f7│f8│ |f9│10│11│12│  │Ps│SL│PB│   o o o ────── ║ "
" ║  __ __ __ __ __ __ __ __ __ __ __ __ __ _____    __ __ __    __ __ __ __  ║ "
" ║ │_~│_1│_2│_3│_4│_5│_6│_7│_8│_9│_0│_-│_=│___←_│  │In│Hm│PU│  │Nu│_/│_*│_-│ ║ "
" ║ │⇆__│_Q│_W│_E│_R│_T│_Y│_U│_I│_O│_P│_{│_}│_ ↲ │  │Dl│En│PD│  │_7│_8│_9│ +│ ║ "
" ║ │Caps│_A│_S│_D│_F│_G│_H│_J│_K│_L│_:│_'│_\│___│      __      │_4│_5│_6│__│ ║ "
" ║ │Shift│_Z│_X│_C│_V│_B│_N│_M│_<│_>│_?│__Shift_│   __│↑_│__   │_1│_2│_3│Ent ║ "
" |╱ ____ ╲_│Alt_│Space_______╱ ____ ╲Alt│__│Ctrl│  │←_│↓_│→_│__│__╱ ____ ╲ │ | "
" :╲ ╲   ╲__   ______   _______ ╲   ╲___     ___ ╲__╱  ____  _______ ╲   ╲ ╲  : "
" .╱ ╱   __╱╱ ╱  ___╱╲__╲ _   ╱╲╱       ╲╲ ╱╱__╱╲ ___╱╱   ╱ _╲__   ╱\╱   ╱╲ ╲ . "
" ╱ ╱  ╱╱   ╱╱  ___╱ ╱  __╱  ╱ ╱  _  _  ╱ ╱    ╱╲╱   _    ╲╱   ╱  ╱ ╱  ╱╱__╲ ╲_ "
"╱ ╱       ╱╱     ╱╱╱  ╱_   ╱ ╱  ╱╱ ╱╱  ╱╱    ╱ ╱   ╱╱    ╱  ╱╱  ╱ ╱      ╱╲╲_ ╲"
"╲ ╲______╱ ╲_____╱ ╲__╲╲___╲ ╲__╲__╲__╱ ╲____╲ ╲___╲___╲ ╲______╲ ╲_____╱  ╲  ╱"
" ╲_╲     ╲  ╲    ╲  ╲  ╲╲   ╲ ╲  ╲  ╲ ╲  ╲    ╲ ╲   ╲   ╲ ╲      ╲ ╲    ╲  ╱_╱ "
"    ╲____╲╲_╱╲___╲╲_╱╲__╱╲__╲╲_╲_╲╲_╲╲_╲_╱╲___╲╲╱╲__╲╲__╲╲╱╲_____╲╲╱╲___╲╲╱    "
"                                                                               "
"                                                                               "
)
lengthArray=${#stringsArr[@]}; random=$RANDOM;
# $RANDOM is distributed between 0 and 32767
for (( numberString=0; numberString<=$lengthArray; numberString++ )); do
  echo -en "\033[40m"
  for numberChar in {0..79}; do
    if [[ $random -ge 0 ]] && [[ $random -lt 8192 ]]; then
      echo -en "\033[38;2;$(($numberChar*2+$numberString*3));$((255-$numberChar-$numberString*2));0m${stringsArr[numberString]:$numberChar:1}"
    elif [[ $random -ge 8193 ]] && [[ $random -lt 16384 ]]; then
      echo -en "\033[38;2;255;$((245-$numberChar*2-$numberString*3));0m${stringsArr[numberString]:$numberChar:1}"
    elif [[ $random -ge 16385 ]] && [[ $random -lt 24576 ]]; then
      echo -en "\033[38;2;$(($numberChar*2+$numberString*3));$((245-$numberChar*2-$numberString*3));$((255-$numberChar-$numberString))m${stringsArr[numberString]:$numberChar:1}"
    else
      echo -en "\033[38;2;$((255-$numberChar*2-$numberString*3));128;$(($numberChar*2+$numberString*3))m${stringsArr[numberString]:$numberChar:1}"
  fi
  done
  echo -e "\033[0m"
done


# exit 0
