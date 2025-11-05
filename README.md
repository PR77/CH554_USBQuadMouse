# CH554 USB MOUSE + KEYBOARD <-> AMIGA X-LATER
USB MOUSE + KEYBOARD <-> AMIGA X-LATER based on the WCH554 MCS51 based chip with USB Device + Host Interface. 

# Warning
This design has not been compliance tested and will not be. It may cause personal damage to you or others. I take no responsibility for this. I accept no responsibility for any damage to any equipment that results from the use of this design and its components. IT IS ENTIRELY AT YOUR OWN RISK!

# Overview
This project allows you to use a USB mouse or keyboard on an Amiga computer - of course only one-or-the-other is supported at any one time. It essentially converts a USB mouse to generate a quadrature signal stream, similarly it converts a USB keyboard keycodes (currently only DE is implemented) to work with an Amiga. There are many variants of such a project available, either using this micro controller or others, however I'm using this project as an opportunity to learn more about the WCH55x micro controller.

# Appearance Breadboard Version
I forgot to take a picture of the mess of wires breadboard version, so here is a picture on some perf-board instead. I'm using the USB B socket for debugging and the USB A socket is for the Mouse Connection. Of course only 1 device (either PC for debugging or Mouse for using) can be connected. I got the two USB sockets from an old printer board I found lying around the house.

![Perfboard](/Images/prototypeBoard.jpg)

# Appearance Final PCB Version
PCB version has been routed and manufactured for supporting a mouse or keyboard. Here is the usual 3D artwork of the design.

![PCB](/Images/USBQuadMousePCB.png)

OLED is also supported so you can see some information for example keyboard and mouse report data.

# Credits
I refacted a lot of the original libraries into various software components. However there were some repos which provided me with excellent information, tools and resources;
- https://github.com/wagiminator
- https://github.com/Blinkinlabs/ch554_sdcc
- https://github.com/HonghongLu/CH554