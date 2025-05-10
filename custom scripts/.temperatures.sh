#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

CORE_0="$(echo $(sensors | grep 'Core 0:') | cut -c 10-11)"
CORE_1="$(echo $(sensors | grep 'Core 1:') | cut -c 10-11)"
CORE_2="$(echo $(sensors | grep 'Core 2:') | cut -c 10-11)"
CORE_3="$(echo $(sensors | grep 'Core 3:') | cut -c 10-11)"

CORE_0_TEMP="$(echo $(sensors | grep 'Core 0:') | cut -c 10-16)"
CORE_1_TEMP="$(echo $(sensors | grep 'Core 1:') | cut -c 10-16)"
CORE_2_TEMP="$(echo $(sensors | grep 'Core 2:') | cut -c 10-16)"
CORE_3_TEMP="$(echo $(sensors | grep 'Core 3:') | cut -c 10-16)"

if [ $CORE_0 -lt 60 ]; then
  echo -e "core 0 -> $CORE_0_TEMP"
elif [$CORE_0_TEMP -ge 60 ]; then
  echo -e "core 0 -> ${RED}$CORE_0_TEMP${NC}"
fi

if [ $CORE_1 -lt 60 ]; then
  echo -e "core 1 -> $CORE_1_TEMP"
elif [$CORE_1_TEMP -ge 60 ]; then
  echo -e "core 1 -> ${RED}$CORE_1_TEMP${NC}"
fi

if [ $CORE_2 -lt 60 ]; then
  echo -e "core 2 -> $CORE_2_TEMP"
elif [$CORE_2_TEMP -ge 60 ]; then
  echo -e "core 2 -> ${RED}$CORE_2_TEMP${NC}"
fi

if [ $CORE_3 -lt 60 ]; then
  echo -e "core 3 -> $CORE_3_TEMP"
elif [$CORE_3_TEMP -ge 60 ]; then
  echo -e "core 3 -> ${RED}$CORE_3_TEMP${NC}"
fi
