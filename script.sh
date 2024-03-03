#!/bin/bash

# cd ~/
# nano script.sh
# sudo chmod +x ~/script.sh
# ~/script.sh


#-----------------------------------------------------------
#    BASE COMANDS
#-----------------------------------------------------------

#clear

date
hostname
pwd

#bash
#bash_version
#home
#random
#ostype
#ps1
#uid
#user


#-----------------------------------------------------------
#    VARIABLES
#-----------------------------------------------------------

var1="Very nice :-)"
echo "Hello, World!!" $var1

x=2
y=3
sum=$(($x+$y-1))
echo "x + y - 1 =" $sum


#-----------------------------------------------------------
#    INPUT
#-----------------------------------------------------------

echo -n "Input name: "
read name
echo "Hello" $name "%))))"


#-----------------------------------------------------------
#    FILE's ARGUMENTS
#-----------------------------------------------------------

# comand line --> ~/script.sh 1 + 2

# $1...$9, $[10]...$[1024]...$[hz]
echo "result = $(($1 $2 $3))"


#-----------------------------------------------------------
#    IF ELSE
#-----------------------------------------------------------

# -lt - <
# -gt - >
# -le - <=
# -ge - >=
# -eq - ==
# -ne - !=

# && - and
# || - or

echo "Input your age: "
read age
if [[ $age -ge 0 ]] && [[ $age -lt 13 ]]; then
  echo "You are child"
  elif [[ $age -ge 13 ]] && [[ $age -lt 20 ]]; then
    echo "You are teen"
  elif [[ $age -ge 20 ]] && [[ $age -lt 50 ]]; then
    echo "You are norm people"
  else
    echo "You are old human"
fi


#-----------------------------------------------------------
#    CASE
#-----------------------------------------------------------

echo "Enter brand (samsung, nokia or huawei): "
read brand
case $brand in
  samsung )
    echo "Sale $brand - 30%" ;;
  nokia )
    echo "Sale $brand - 20%" ;;
  huawei )
    echo "Sale $brand - 10%" ;;
  *)
    echo "this $brand is not a brand!!!"
esac


#-----------------------------------------------------------
#    ARRAY
#-----------------------------------------------------------

Array1=(1 1 2 3 5 8 13 21 34 55 89)
Array2=(16 0.5 five)
Array2[0]=32

echo ${Array1[10]}
echo ${Array2[@]}
echo ${!Array1[@]}
echo ${#Array1[@]}
echo ${#Array2[2]}


#-----------------------------------------------------------
#    FOR
#-----------------------------------------------------------

for i in ${!Array1[@]}; do
  echo "Value: ${Array1[$i]}"
done

for n in 1 2 3; do
  echo $n;
done

for (( i=0; i<10; i++)); do
  echo "Cicle 3: $i"
done

m=1
while [ $m -lt 4 ]
  do
    echo "--> $m"
    m=$(( $m+1 ));
done


#-----------------------------------------------------------
#    FUNCTIONS
#-----------------------------------------------------------

list_files() {
  echo "File list -->"
  #cd ~/script.sh
  ls;
}

list_files


#-----------------------------------------------------------
#    RECURSION
#-----------------------------------------------------------

Example() {
  echo -n "How much is 2+2? Enter number: "
  read answer
  if [[ $answer == 4 ]]; then
    echo "The answer is correct."
  else
    echo "The answer is not correct..."
    echo
    Example
  fi
}
echo "Example recursion function"
Example


#-----------------------------------------------------------
#    COLORS
#-----------------------------------------------------------

# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

#    .---------- constant part!
#    vvvv vvvv-- the code from above
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "I ${RED}love${NC} Stack Overflow\n"

# Continued from above example
echo -e "I ${RED}love${NC} Stack Overflow"

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White

# The below table shows a summary of 3/4 bit version of ANSI-color
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#| color-mode | octal    | hex     | bash  | description      | example (= in octal)         | NOTE                                 |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#|          0 | \033[0m  | \x1b[0m | \e[0m | reset any affect | echo -e "\033[0m"            | 0m equals to m                       |
#|          1 | \033[1m  |         |       | light (= bright) | echo -e "\033[1m####\033[m"  | -                                    |
#|          2 | \033[2m  |         |       | dark (= fade)    | echo -e "\033[2m####\033[m"  | -                                    |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#|  text-mode | ~        |         |       | ~                | ~                            | ~                                    |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#|          3 | \033[3m  |         |       | italic           | echo -e "\033[3m####\033[m"  |                                      |
#|          4 | \033[4m  |         |       | underline        | echo -e "\033[4m####\033[m"  |                                      |
#|          5 | \033[5m  |         |       | blink (slow)     | echo -e "\033[3m####\033[m"  |                                      |
#|          6 | \033[6m  |         |       | blink (fast)     | ?                            | not wildly support                   |
#|          7 | \003[7m  |         |       | reverse          | echo -e "\033[7m####\033[m"  | it affects the background/foreground |
#|          8 | \033[8m  |         |       | hide             | echo -e "\033[8m####\033[m"  | it affects the background/foreground |
#|          9 | \033[9m  |         |       | cross            | echo -e "\033[9m####\033[m"  |                                      |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#| foreground | ~        |         |       | ~                | ~                            | ~                                    |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#|         30 | \033[30m |         |       | black            | echo -e "\033[30m####\033[m" |                                      |
#|         31 | \033[31m |         |       | red              | echo -e "\033[31m####\033[m" |                                      |
#|         32 | \033[32m |         |       | green            | echo -e "\033[32m####\033[m" |                                      |
#|         33 | \033[33m |         |       | yellow           | echo -e "\033[33m####\033[m" |                                      |
#|         34 | \033[34m |         |       | blue             | echo -e "\033[34m####\033[m" |                                      |
#|         35 | \033[35m |         |       | purple           | echo -e "\033[35m####\033[m" | real name: magenta = reddish-purple  |
#|         36 | \033[36m |         |       | cyan             | echo -e "\033[36m####\033[m" |                                      |
#|         37 | \033[37m |         |       | white            | echo -e "\033[37m####\033[m" |                                      |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#|         38 | 8/24     |                    This is for special use of 8-bit or 24-bit                                            |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#| background | ~        |         |       | ~                | ~                            | ~                                    |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#|         40 | \033[40m |         |       | black            | echo -e "\033[40m####\033[m" |                                      |
#|         41 | \033[41m |         |       | red              | echo -e "\033[41m####\033[m" |                                      |
#|         42 | \033[42m |         |       | green            | echo -e "\033[42m####\033[m" |                                      |
#|         43 | \033[43m |         |       | yellow           | echo -e "\033[43m####\033[m" |                                      |
#|         44 | \033[44m |         |       | blue             | echo -e "\033[44m####\033[m" |                                      |
#|         45 | \033[45m |         |       | purple           | echo -e "\033[45m####\033[m" | real name: magenta = reddish-purple  |
#|         46 | \033[46m |         |       | cyan             | echo -e "\033[46m####\033[m" |                                      |
#|         47 | \033[47m |         |       | white            | echo -e "\033[47m####\033[m" |                                      |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|
#|         48 | 8/24     |                    This is for special use of 8-bit or 24-bit                                            |                                                                                       |
#|------------+----------+---------+-------+------------------+------------------------------+--------------------------------------|

# The below table shows a summary of 8 bit version of ANSI-color
#|------------+-----------+-----------+---------+------------------+------------------------------------+-------------------------|
#| foreground | octal     | hex       | bash    | description      | example                            | NOTE                    |
#|------------+-----------+-----------+---------+------------------+------------------------------------+-------------------------|
#|        0-7 | \033[38;5 | \x1b[38;5 | \e[38;5 | standard. normal | echo -e '\033[38;5;1m####\033[m'   |                         |
#|       8-15 |           |           |         | standard. light  | echo -e '\033[38;5;9m####\033[m'   |                         |
#|     16-231 |           |           |         | more resolution  | echo -e '\033[38;5;45m####\033[m'  | has no specific pattern |
#|    232-255 |           |           |         |                  | echo -e '\033[38;5;242m####\033[m' | from black to white     |
#|------------+-----------+-----------+---------+------------------+------------------------------------+-------------------------|
#| foreground | octal     | hex       | bash    | description      | example                            | NOTE                    |
#|------------+-----------+-----------+---------+------------------+------------------------------------+-------------------------|
#|        0-7 |           |           |         | standard. normal | echo -e '\033[48;5;1m####\033[m'   |                         |
#|       8-15 |           |           |         | standard. light  | echo -e '\033[48;5;9m####\033[m'   |                         |
#|     16-231 |           |           |         | more resolution  | echo -e '\033[48;5;45m####\033[m'  |                         |
#|    232-255 |           |           |         |                  | echo -e '\033[48;5;242m####\033[m' | from black to white     |
#|------------+-----------+-----------+---------+------------------+------------------------------------+-------------------------|
# The 8-bit fast test:
# for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done

# The below table shows a summary of 24 bit version of ANSI-color
#|------------+-----------+-----------+---------+-------------+------------------------------------------+-----------------|
#| foreground | octal     | hex       | bash    | description | example                                  | NOTE            |
#|------------+-----------+-----------+---------+-------------+------------------------------------------+-----------------|
#|      0-255 | \033[38;2 | \x1b[38;2 | \e[38;2 | R = red     | echo -e '\033[38;2;255;0;02m####\033[m'  | R=255, G=0, B=0 |
#|      0-255 | \033[38;2 | \x1b[38;2 | \e[38;2 | G = green   | echo -e '\033[38;2;;0;255;02m####\033[m' | R=0, G=255, B=0 |
#|      0-255 | \033[38;2 | \x1b[38;2 | \e[38;2 | B = blue    | echo -e '\033[38;2;0;0;2552m####\033[m'  | R=0, G=0, B=255 |
#|------------+-----------+-----------+---------+-------------+------------------------------------------+-----------------|
#| background | octal     | hex       | bash    | description | example                                  | NOTE            |
#|------------+-----------+-----------+---------+-------------+------------------------------------------+-----------------|
#|      0-255 | \033[48;2 | \x1b[48;2 | \e[48;2 | R = red     | echo -e '\033[48;2;255;0;02m####\033[m'  | R=255, G=0, B=0 |
#|      0-255 | \033[48;2 | \x1b[48;2 | \e[48;2 | G = green   | echo -e '\033[48;2;;0;255;02m####\033[m' | R=0, G=255, B=0 |
#|      0-255 | \033[48;2 | \x1b[48;2 | \e[48;2 | B = blue    | echo -e '\033[48;2;0;0;2552m####\033[m'  | R=0, G=0, B=255 |
#|------------+-----------+-----------+---------+-------------+------------------------------------------+-----------------|


#-----------------------------------------------------------
# Example

echo "$(tput setaf 1)Red text $(tput setab 7)and white background$(tput sgr 0)"

# Foreground & background colour commands
#
# tput setab [1-7] # Set the background colour using ANSI escape
# tput setaf [1-7] # Set the foreground colour using ANSI escape
#
# Num  Colour    #define         R G B
#
# 0    black     COLOR_BLACK     0,0,0
# 1    red       COLOR_RED       1,0,0
# 2    green     COLOR_GREEN     0,1,0
# 3    yellow    COLOR_YELLOW    1,1,0
# 4    blue      COLOR_BLUE      0,0,1
# 5    magenta   COLOR_MAGENTA   1,0,1
# 6    cyan      COLOR_CYAN      0,1,1
# 7    white     COLOR_WHITE     1,1,1
# colors 0 - 15 ???
#
# Text mode commands
#
# tput bold    # Select bold mode
# tput dim     # Select dim (half-bright) mode
# tput smul    # Enable underline mode
# tput rmul    # Disable underline mode
# tput rev     # Turn on reverse video mode
# tput smso    # Enter standout (bold) mode
# tput rmso    # Exit standout mode
#
# Cursor movement commands
#
# tput cup Y X # Move cursor to screen postion X,Y (top left is 0,0)
# tput cuf N   # Move N characters forward (right)
# tput cub N   # Move N characters back (left)
# tput cuu N   # Move N lines up
# tput ll      # Move to last line, first column (if no cup)
# tput sc      # Save the cursor position
# tput rc      # Restore the cursor position
# tput lines   # Output the number of lines of the terminal
# tput cols    # Output the number of columns of the terminal
#
# Clear and insert commands
#
# tput ech N   # Erase N characters
# tput clear   # Clear screen and move the cursor to 0,0
# tput el 1    # Clear to beginning of line
# tput el      # Clear to end of line
# tput ed      # Clear to end of screen
# tput ich N   # Insert N characters (moves rest of line forward!)
# tput il N    # Insert N lines
#
# Other commands
#
# tput sgr0    # Reset text format to the terminal's default
# tput bel     # Play a bell
#
# Scripts
#
# echo -e "setf 7\nsetb 1" | tput -S  # set fg white and bg red


for fgbg in 38 48 ; do #Foreground/Background
	for color in {0..256} ; do #Colors
		#Display the color
		echo -en "\e[${fgbg};5;${color}m ${color}\t\e[0m"
		#Display 10 colors per lines
		if [ $((($color + 1) % 10)) == 0 ] ; then
			echo #New line
		fi
	done
	echo #New line
done


#-----------------------------------------------------------
#    ASCII
#-----------------------------------------------------------

echo
echo -e '\U2591 \U2592 \U2593'
echo

# ░ \U2591
# ▒ \U2592
# ▓ \U2593
# │ \U2502
# ┤ \U2524
# ╡ \U2561
# ╢ \U2562
# ╖ \U2556
# ╕ \U2555
# ╣ \U2563
# ║ \U2551
# ╗ \U2557
# ╝ \U255D
# ╜ \U255C
# ╛ \U255B
# ┐ \U2510
# └ \U2514
# ┴ \U2534
# ┬ \U252C
# ├ \U251C
# ─ \U2500
# ┼ \U253C
# ╞ \U255E
# ╟ \U255F
# ╚ \U255A
# ╔ \U2554
# ╩ \U2569
# ╦ \U2566
# ╠ \U2560
# ═ \U2550
# ╬ \U256C
# ╧ \U2567
# ╨ \U2568
# ╤ \U2564
# ╥ \U2565
# ╙ \U2559
# ╘ \U2558
# ╒ \U2552
# ╓ \U2553
# ╫ \U256B
# ╪ \U256A
# ┘ \U2518
# ┌ \U250C
# █ \U2588
# ▄ \U2584
# ▌ \U258C
# ▐ \U2590
# ▀ \U2580


# ASCII table script, using awk.
# Author: Joseph Steinhauser
# Used in ABS Guide with permission.

#-------------------------------------------------------------------------
#-- File:  ascii     Print ASCII chart, base 10/8/16         (JETS-2010)
#-------------------------------------------------------------------------
#-- Usage: ascii [oct|dec|hex|help|8|10|16]
#--
#-- This script prints a summary of ASCII char codes from Zero to 127.
#-- Numeric values may be printed in Base10, Octal, or Hex (Base16).
#--
#-- Format Based on: /usr/share/lib/pub/ascii with base-10 as default.
#-- For more detail, man ascii
#-------------------------------------------------------------------------

[ -n "$BASH_VERSION" ] && shopt -s extglob

case "$1" in
   oct|[Oo]?([Cc][Tt])|8)       Obase=Octal;  Numy=3o;;
   hex|[Hh]?([Ee][Xx])|16|[Xx]) Obase=Hex;    Numy=2X;;
   help|?(-)[h?])        sed -n '2,/^[ ]*$/p' $0;exit;;
   code|[Cc][Oo][Dd][Ee])sed -n '/case/,$p'   $0;exit;;
   *) Obase=Decimal
esac
export Obase   # CODE is actually shorter than the chart!

awk 'BEGIN{print "\n\t\t## "ENVIRON["Obase"]" ASCII Chart ##\n"
           ab="soh,stx,etx,eot,enq,ack,bel,bs,tab,nl,vt,np,cr,so,si,dle,"
           ad="dc1,dc2,dc3,dc4,nak,syn,etb,can,em,sub,esc,fs,gs,rs,us,sp"
           split(ab ad,abr,",");abr[0]="nul";abr[127]="del";
           fm1="|%0'"${Numy:- 4d}"' %-3s"
           for(idx=0;idx<128;idx++){fmt=fm1 (++colz%8?"":"|\n")
           printf(fmt,idx,(idx in abr)?abr[idx]:sprintf("%c",idx))} }'

# exit 0
exit $?

