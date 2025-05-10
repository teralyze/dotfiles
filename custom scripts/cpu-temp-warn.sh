CORE_0="$(echo $(sensors | grep 'Core 0:') | cut -c 10-11)"
CORE_1="$(echo $(sensors | grep 'Core 1:') | cut -c 10-11)"
CORE_2="$(echo $(sensors | grep 'Core 2:') | cut -c 10-11)"
CORE_3="$(echo $(sensors | grep 'Core 3:') | cut -c 10-11)"

if [$CORE_0 -ge 60 ]; then
  notify-send "CPU TEMP WARNING" "Core 0 Temperature is $CORE_0. Cease operations if task isn't to be over soon."
fi

if [$CORE_1 -ge 60 ]; then
  notify-send "CPU TEMP WARNING" "Core 0 Temperature is $CORE_1. Cease operations if task isn't to be over soon."
fi

if [$CORE_2 -ge 60 ]; then
  notify-send "CPU TEMP WARNING" "Core 0 Temperature is $CORE_2. Cease operations if task isn't to be over soon."
fi

if [$CORE_3 -ge 60 ]; then
  notify-send "CPU TEMP WARNING" "Core 0 Temperature is $CORE_3. Cease operations if task isn't to be over soon."
fi



