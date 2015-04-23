#!/bin/bash

DATE="$(date +%Y%m%d)"
cp $1 "$1.${DATE}.org"
