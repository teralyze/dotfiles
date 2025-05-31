#!/bin/bash
nmcli con modify "Batuhan" ipv4.dns "1.1.1.1 1.0.0.1" &&
nmcli con modify "Batuhan" ipv4.ignore-auto-dns yes &&
nmcli con up "Batuhan"
