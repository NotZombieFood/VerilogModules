# Verilog Modules for Digital Design Class (GUIDE)
## What fpga are we using?
Altera DE2-70, which manual can be found at this [link](https://www.terasic.com.tw/attachment/archive/226/DE2_70_User_manual_v105.pdf)
The software we will use for compiling for the fpga is Quartus 13.0 Web Edition because it is the free one:
[Quartus13.0](http://download.altera.com/akdlm/software/acdsinst/13.0sp1/232/ib_installers/QuartusSetupWeb-13.0.1.232.exe)
### Necesitas este archivo para la instalación
[Cyclone II](http://download.altera.com/akdlm/software/acdsinst/13.0sp1/232/ib_installers/cyclone_web-13.0.1.232.qdz)
## Environment for working
### Text editor or IDE
Text editors are a ligthweight and reliable solution for working with code and it is also the case with Verilog.
I like to have a customizable text editor so I will recommend a combination that works pretty well for me, Atom plus some extensions like:
* aligner-verilog
* language-verilog
* linter
* linter-ui
* linter-verilog
* file-icons (not necessary but will make your life easier)
#### Installing Atom
Installing Atom is as simple as it can gets, just go to: [atom.io](atom.io)
Also you can install themes if you like different color palettes.
#### IT WON'T WORK LIKE THIS!
We need to install a compiler for checking our syntax errors when writting in Atom. I highly recommend using [Icarus Verilog](http://iverilog.icarus.com/)
Installation is easy but sometimes it wont work at first, in my case I needed to add it to my environment variables, more info on installation can be found [here](http://www.swarthmore.edu/NatSci/mzucker1/e15_f2014/iverilog.html).
## What am I aiming for with this?
I am trying to create modules that maybe we won't use on class just for fun and also create some guides for my peers.
# Verilog Modules for Digital Design Class (GUIDE)
## What fpga are we using?
Altera DE2-70, which manual can be found at this [link](https://www.terasic.com.tw/attachment/archive/226/DE2_70_User_manual_v105.pdf)
The software we will use for compiling for the fpga is Quartus 13.0 Web Edition because it is the free one:
[Quartus13.0](http://download.altera.com/akdlm/software/acdsinst/13.0sp1/232/ib_installers/QuartusSetupWeb-13.0.1.232.exe)
### You need this file for everything to work (we will use it later): [Cyclone II](http://download.altera.com/akdlm/software/acdsinst/13.0sp1/232/ib_installers/cyclone_web-13.0.1.232.qdz)
## Environment for working
### Text editor or IDE
Text editors are a ligthweight and reliable solution for working with code and it is also the case with Verilog.
I like to have a cleaner interface so I won't use an IDLE for writing the code, just for compiling. The best combination I have found is  Atom plus some extensions like:
- aligner-verilog
- language-verilog
- linter
- linter-ui
- linter-verilog
- file-icons (not necessary but will make your life easier)
#### Installing Atom
Installing Atom is as simple as it can gets, just go to: [atom.io](http://atom.io)
Also you can install themes if you like different color palettes.
#### IT WON'T WORK LIKE THIS!
We need to install a compiler for checking our syntax errors when writting in Atom. I highly recommend using [Icarus Verilog](http://iverilog.icarus.com/)
Installation is easy but sometimes it wont work rigth out of the box, in my case I needed to add it to my environment variables, more info on installation can be found [here](http://www.swarthmore.edu/NatSci/mzucker1/e15_f2014/iverilog.html).
## Quartus, how to use it?
When you launch the software for the first time, you will be prompted to install one family of product. Follow the assistant and choose the file called Cyclone or something like that.
Then create your proyect and choose Cyclone II as the family and EP2C70F896C6 as the model we are using.
![Image](https://i.imgur.com/l0fJ7vm.png)
Now we are almost ready to work but first it will be a good idea to test our board:
- Click on program device:
![Image](https://i.imgur.com/AikHfAZ.png)
- Check if it says USB-Blaster [USB-0], if not go to Control Panel --> Device Administrator and search for USB-Blaster if it is not inside the BUS category, look for it on another one and rigth click it and select Properties. After this click on install or update drivers, then select look for driver on my pc and in your hard drive at root there will be an altera folder, an inside this one there is one called quartus in which you can click on the drivers folder and let windows handle the search.
![Image](https://i.imgur.com/l200BhI.png)
- If your USB-Blaster is shown, then download the folder called DE2-70 Default from the Projects Examples in this repository and click on add file. Look for the file with the extension .sof and click on it.
- Verify your card has the switch on RUN or it will fail the transfer. After this just click on start and you are ready to go. All the leds in the card should be flashing and the 7 segment displays too.

# MANUAL IS WRONG, please use the DE2_70_Default.v file as a reference for port defining.
