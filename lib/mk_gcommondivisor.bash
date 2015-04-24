#!/bin/bash

if [ -z "$1" ] ; then
  echo 0
else
  first_array=()
  for i in {0.."$1"} ; do
    if ("$1" % ${i} == 0) ; then
      ${first_array}[${#first_array[@]}] = ${i}
    fi
  done
  echo first_array
fi
