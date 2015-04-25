#!/bin/bash

if [ -z "$1" ] ; then
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
  i=0
  for j in ${first_array[@]}; do
    for k in ${second_array[@]}; do
      if [ ${j} -eq ${k} ] ; then
        g_common_divisor=${j}
      fi
      let k++
    done
    let i++
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

