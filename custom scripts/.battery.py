#!/bin/env python
from openrazer.client import DeviceManager

device_manager = DeviceManager()

viper = None
for device in device_manager.devices:
    
    if "Razer Viper Ultimate (Wireless)" == device.name:
        viper = device

if None == viper:
    print("n/a")
    exit

charging = ''
if viper.is_charging:
    charging = ''

print(" {} {}%".format(charging, viper.battery_level))
