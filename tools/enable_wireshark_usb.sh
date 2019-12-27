#!/bin/bash

modprobe usbmon
setfacl -m u:grg:r /dev/usbmon*
