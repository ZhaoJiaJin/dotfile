#!/bin/bash


#pkill dunst
#nohup /usr/bin/dunst &

PDIR="$HOME/.config/polybar"

source  ~/.cache/wal/colors.sh


dim=`python ${PDIR}/scripts/testcolor.py ${foreground}`

sed -i -e "s/bg = .*/bg = ${background}/g" $PDIR/colors.ini
sed -i -e "s/mb = .*/mb = ${foreground}/g" $PDIR/colors.ini
sed -i -e "s/mgf = .*/mgf = ${foreground}/g" $PDIR/colors.ini

sed -i -e "s/fg = .*/fg = ${background}/g" $PDIR/colors.ini

#if [ ${dim} -gt 128 ]; then
#  sed -i -e 's/fg = .*/fg = #000000/g' $PDIR/colors.ini
#else
#  sed -i -e 's/fg = .*/fg = #CFCFCF/g' $PDIR/colors.ini
#fi


PID1="$(pgrep -u $UID -x polybar | head -n 1)"
PID2="$(pgrep -u $UID -x polybar | tail -n 1)"

polybar-msg -p $PID1 cmd restart
polybar-msg -p $PID2 cmd restart

