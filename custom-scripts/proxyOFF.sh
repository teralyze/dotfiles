#!/bin/bash
nmcli con modify "Batuhan" ipv4.ignore-auto-dns no &&
nmcli con modify "Batuhan" ipv4.dns "" &&
nmcli con up "Batuhan"
