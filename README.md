# CH554 USB <> QUADRATURE Mouse Encoder
USB <> QUADRATURE Mouse Encoder based on the WCH554 MCS51 based chip with USB Device + Host Interface. 

# Warning
This design has not been compliance tested and will not be. It may cause personal damage to you or others. I take no responsibility for this. I accept no responsibility for any damage to any equipment that results from the use of this design and its components. IT IS ENTIRELY AT YOUR OWN RISK!

# Overview
This project allows you to use a USB mouse on an Amiga computer. It essentially converts a USB mouse to generate a quadrature signal stream. There are many variants of such a project available, either using this micro controller or others, however I'm using this project as an opportunity to learn more about the WCH55x micro controller.

# Appearance Breadboard Version
I forgot to take a picture of the mess of wires breadboard version, so here is a picture on some perf-board instead. I'm using the USB B socket for debugging and the USB A socket is for the Mouse Connection. Of course only 1 device (either PC for debugging or Mouse for using) can be connected. I got the two USB sockets from an old printer board I found lying around the house.

![Perfboard](/Images/prototypeBoard.jpg)

# Appearance Final PCB Version
PCB version has been routed and manufactured. Here is the usual 3D artwork of the design.
![PCB](/Images/USBQuadMousePCB.png)

OLED is also supported. In addition to emulating a QUADRATURE Mouse, I also added a header to allow the board to be used to connect a USB Keyboard to the Amiga. Of course, only USB device can be used at a time. Software for the keyboard support is still work-in-progress.

# Credits
I refacted a lot of the original libraries into various software components. However there were some repos which provided me with excellent information, tools and resources;
- https://github.com/wagiminator
- https://github.com/Blinkinlabs/ch554_sdcc
- https://github.com/HonghongLu/CH554