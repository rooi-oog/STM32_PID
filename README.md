STM32 PID servo controller
==========================

This project consists on a my attempt to implement PID to control servo drive. It assumes that servo is usual dc motor with some kind of position feedback - optical encoder on motor shaft as an example. It based on the best, in my humble opinion, implementation from [Elm Chan](http://elm-chan.org/works/smc/report_e.html).

This repo splits into two sub-projects:
		
Firmware
--------

All PID calculations performed in fixed-point format which allowed to reduce the execution time, which in turn allows to control two servo by one uC. There are left free time and one timer to get some additional stuff.

Software
--------

I've attached the GUI software for tuning the PID gains. Its written on C with GTK+-3.0, so it need some extra effort to compile it for Win32 platform. Anyway it can be made with [MSYS2](https://msys2.github.io) pretty straightforward.
Communication with STM32 carried through UART. I use cheap USB-to-RS232 cable for that purpose. UART settings: 115200 8N1. 
Particular attention should be given to the ability to get feedback chart. It is pretty precise and very helpful capacity for PID gains tuning.

LICENSE
-------

All source code released with GPL v3.0 unless otherwise specified.
