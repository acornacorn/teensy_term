Teensy Terminal
===============
The teensy_term program allows you to see what the teensy board is printing on
the serial port, and type characters back to the teensy.

This is designed for use with teensy boards, https://www.pjrc.com/teensy/ but should work with any device that communicates over serial port or USB serial.

It is similar to the Arduino Serial Monitor program with the following
differences:
- automatically listens to any teensy when it gets connected or rebooted
- works with any number of teensy boards all at the same time
- runs in a terminal (e.g. xterm or gnome terminal)
- does not require Java.

Building
--------
To build type

    make

Running
-------
To run type

    ./teensy_term

You will see the message "Waiting for serial ports...".
Any time a teensy board is connected (USB) to the computer (or if one or more
is already connected when you run teensy_term) you will see the message "Opened
device /dev/ttyACM#" for each teensy board.  Each message from any connected
teensy (e.g. from printf or Serial.println) is printed on the screen.  Any
characters you type in the terminal are sent to all connected teensy boards.

Porting
-------
teensy_term works by looking for any device file of the form "/dev/ttyACM*".

I have only tested it on GNU/Linux (Ubuntu 12.04)  but I think it should work on any posix system (including Mac).

To use it with a device that uses a device name other than ttyACM* edit the sourcefile and change ttyACM as needed.
