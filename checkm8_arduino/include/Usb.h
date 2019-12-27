/* Copyright (C) 2011 Circuits At Home, LTD. All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

Contact information
-------------------

Circuits At Home, LTD
Web      :  http://www.circuitsathome.com
e-mail   :  support@circuitsathome.com
 */
/* USB functions */
#ifndef _usb_h_
#define _usb_h_

// WARNING: Do not change the order of includes, or stuff will break!
#include "/opt/arduino-1.8.10/hardware/tools/avr/avr/include/inttypes.h"
#include "/opt/arduino-1.8.10/hardware/tools/avr/lib/gcc/avr/7.3.0/include/stddef.h"
#include "/opt/arduino-1.8.10/hardware/tools/avr/avr/include/stdio.h"

// None of these should ever be included by a driver, or a user's sketch.
#include "../lib/hostshield/settings.h"
#include "../lib/hostshield/printhex.h"
#include "../lib/hostshield/message.h"
#include "../lib/hostshield/hexdump.h"
#include "../lib/hostshield/sink_parser.h"
#include "../lib/hostshield/max3421e.h"
#include "../lib/hostshield/address.h"
#include "../lib/hostshield/avrpins.h"
#include "../lib/hostshield/usb_ch9.h"
#include "../lib/hostshield/usbhost.h"
#include "../lib/hostshield/UsbCore.h"
#include "../lib/hostshield/parsetools.h"
#include "../lib/hostshield/confdescparser.h"

#endif //_usb_h_
