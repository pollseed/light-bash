#!/bin/bash

if [ -z "$1" ] ; then
  echo 0
else
  # 第１引数の公約数
  FIRST=$1
  first_array=()
  i=1
  while [ ${i} -le ${FIRST} ] ; do
    if [ "$(( ${FIRST} % ${i} ))" -eq 0 ] ; then
      first_array+=(${i})
    fi
    let i++
  done

  # 第２引数の公約数
  SECOND=$2
  second_array=()
  i=1
  while [ ${i} -le ${SECOND} ] ; do
    if [ "$(( ${SECOND} % ${i} ))" -eq 0 ] ; then
      second_array+=(${i})
    fi
    let i++
  done

  # 最大公約数を出力
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

