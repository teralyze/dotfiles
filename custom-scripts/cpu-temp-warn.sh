#!/bin/bash

CORE_0_TEMP=$(./.temperatures.sh | grep 'core 0' | cut -c 11-12)
CORE_1_TEMP=$(./.temperatures.sh | grep 'core 1' | cut -c 11-12)
CORE_2_TEMP=$(./.temperatures.sh | grep 'core 2' | cut -c 11-12)
CORE_3_TEMP=$(./.temperatures.sh | grep 'core 3' | cut -c 11-12)

while(true); do
  if [ $CORE_0_TEMP -eq 69 ]; then
    notify-send "CORE 0 OVERHEAT" "Core 0 temperature is $CORE_0_TEMP °C"
  fi

  if [ $CORE_1_TEMP -eq 69 ]; then
    notify-send "CORE 1 OVERHEAT" "Core 1 temperature is $CORE_1_TEMP °C"
  fi

  if [ $CORE_2_TEMP -eq 69 ]; then
    notify-send "CORE 2 OVERHEAT" "Core 2 temperature is $CORE_2_TEMP °C"
  fi 

  if [ $CORE_3_TEMP -eq 69 ]; then
    notify-send "CORE 3 OVERHEAT" "Core 3 temperature is $CORE_3_TEMP °C"
  fi
  sleep 5
done

