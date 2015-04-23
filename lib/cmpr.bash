#!/bin/bash

if [ -z "$1" ] ; then
  echo 0
else 
  [ "$1" = "$2" ] ; echo $?
fi
