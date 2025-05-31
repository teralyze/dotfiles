#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

# Array of core numbers
CORES=(0 1 2 3)

# Loop through each core
for CORE in "${CORES[@]}"; do
  TEMP=$(sensors | grep "Core $CORE:" | cut -c 17-18) # Cleaned temperature for comparison
  FULL_TEMP=$(sensors | grep "Core $CORE:" |  cut -c 17-23) # Full temp with °C

  # Check temperature and print with color if necessary
  if [ "$TEMP" -lt 60 ]; then
    echo -e "core $CORE -> $FULL_TEMP"
  else
    echo -e "core $CORE -> ${RED}$FULL_TEMP${NC}"
  fi
done
