#!/bin/bash
#
# args $1 $2 $1$B$H(B$2$B$N:GBg8xLs?t$r=PNO(B
# $B0z?t$,(B2$B$D;XDj$5$l$J$+$C$?>l9g$O(B0$B$,=PNO$5$l$^$9(B.
#

if [ -z "$1" ] || [ $# -ne 2 ] ; then
  echo 0
else
  # $BBh#10z?t$N8xLs?t(B
  FIRST=$1
  first_array=()
  i=1
  while [ ${i} -le ${FIRST} ] ; do
    if [ "$(( ${FIRST} % ${i} ))" -eq 0 ] ; then
      first_array+=(${i})
    fi
    let i++
  done

  # $BBh#20z?t$N8xLs?t(B
  SECOND=$2
  second_array=()
  i=1
  while [ ${i} -le ${SECOND} ] ; do
    if [ "$(( ${SECOND} % ${i} ))" -eq 0 ] ; then
      second_array+=(${i})
    fi
    let i++
  done

  # $B:GBg8xLs?t$r=PNO(B
  g_common_divisor=0
  for i in ${first_array[@]}; do
    for j in ${second_array[@]}; do
      if [ ${i} -eq ${j} ] ; then
        g_common_divisor=${i}
      fi
      let j++
    done
  done
  echo ${g_common_divisor}
  
  # debug
  #echo DEBUG_LOG -----
  #i=0
  #for j in ${first_array[@]}; do
  #  echo ${j}
  #  let i++
  #done
  
  #i=0
  #for j in ${second_array[@]}; do
  #  echo ${j}
  #  let i++
  #done
fi

