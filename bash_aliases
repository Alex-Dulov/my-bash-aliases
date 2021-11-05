# ==============================================================================
# Functions
# ==============================================================================

# ssh connection & run script on remote rep
function Connect_Soft {
  Commands_Soft='sh path_on_server/some-script.sh;'
  ssh -AYv login@ip -p 0000 $Commands_Soft
}

# ssh connection & git commands & run bash on server
function Connect_Other {
  Commands_Rarus='cd /path_on_server/; git reset --hard; git reset HEAD --hard; git clean -df; git checkout master; git fetch; git pull origin master; echo "task: task#"; read -r taskId; echo "task: $taskId"; git fetch origin "task#$taskId"; git pull -ff origin "task#$taskId"; composer install; ln -s /path_on_server/isdev.php isdev.php; git status; pwd; /bin/bash;'
  ssh dulale@gw.rarus-crimea.ru -p 22160 $Commands_Rarus
}


# ==============================================================================
# Aliases
# ==============================================================================

alias cls='printf "\033c"; clear;'
alias ls='ls -AlhF --color=auto'
alias cd..='cd ..'
alias update='sudo apt-get update'
alias nautilus='sudo nautilus'
alias :q='exit'
alias cx="chmod +x"

# Connection aliases
alias dsf=Connect_Soft
alias drs=Connect_Other


# ==============================================================================
# Banner
# ==============================================================================

# max 30 strings
stringsArr=(
"        o                                                   _    o             "
"          .      O                                         (_)  .              "
"        o        _                                          | o                "
"      _O     o  (_)                                         : _O               "
"     (_ )      (  )                                         !(  )              "
"      (_)   O   (_)    Happy hacking!                       : (_)              "
"       |         .            __                   _        .  !               "
"    _  :  _   _  :      _    (__)  _      []-,  _ (_)     ______               "
"   (_)-' (_) (_)-'     (_) _    ' (_)         \(_)/       |{;'}|\              "
"   /|\/   |\ /|\      / |\/       ||\          \|/  O     |____||      ^_^     "
"   \|  []-|/ \|/     '-[]      []-'|/_          |   |    -+====++-+- >(-.o)<   "
"    |\   /|  /|         |\        /|            |\  '-y-- |       |   < < )    "
"  __|/___\|__\|_________|/________\|____________|_\_.-|-._|_______|___(_|_)__  "
" || ___    __ __ __ __   __ __ __ __   __ __ __ __   __ __ __               || "
" |||ESC|  |__|__|__|__| |__|__|__|__| |__|__|__|__| |__|__|__|  o o o ======|| "
" || __ __ __ __ __ __ __ __ __ __ __ __ __ _______   __ __ __   __ __ __ __ || "
" |||_~|_1|_2|_3|_4|_5|_6|_7|_8|_9|_0|_-|_=|__|<--_| |__|__|__| |__|__|__|__||| "
" |||Tab|__|__|__|__|__|__|__|__|__|__|__|__|_Enter| |__|__|__| |__|__|__|+ ||| "
" |||____|__|__|__|__|__|__|__|__|__|__|__|__|_____|     __     |__|__|__|__||| "
" |||_____|__|__|__|__|__|__|__|__|__|__|__|Shift__|  __|__|__  |__|__|__|Ent|| "
" |/ ____ \_|  __|Space________/ ____ \Alt|___|Ctrl| |<-|__|->|_|__|/ ____ \||| "
" :\ \   \___\/ ______   _______ \   \____    __  \__/  ____  _______ \   \ \:: "
" ./ /     _/_ /   __/\__\ _   /\/        \ _/__/  ____/   / _\__   /\/   /\ \. "
" / /   __/  //   __/ /  __/  / /  /  /   //    /\/    \   \/  __  / /   /_/ /. "
" \ \_______/ \____/ /__/ \___\ \__\__\__/ \____\ \___\____/\______\ \_____\ \  "
"  \ \______\/ \___\/\__\/ \___\/\__\__\_\/ \____\/\___\___\/\______\/\_____\ \ "
"   \_________________________________________________________________________/ "
"                                                                               "
)

lengthArray=${#stringsArr[@]}; random=$RANDOM;
# $RANDOM is distributed between 0 and 32767
for (( numberString=0; numberString<=$lengthArray; numberString++ )); do
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
  # with background
  #echo -en "\033[45m <-- add this to print chars echo 
  #echo -e "\033[0m"
  echo -e
done

#exit 0
