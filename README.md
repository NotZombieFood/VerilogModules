# Verilog Modules for Digital Design Class (GUIDE)
## What fpga are we using?
Altera DE2-70, which manual can be found at this [link](https://www.terasic.com.tw/attachment/archive/226/DE2_70_User_manual_v105.pdf)
The software we will use for compiling for the fpga is Quartus 13.0 Web Edition because it is the free one:
[Quartus13.0](http://download.altera.com/akdlm/software/acdsinst/13.0sp1/232/ib_installers/QuartusSetupWeb-13.0.1.232.exe)
## Environment for working
### Text editor or IDE
Text editors are a ligthweight and reliable solution for working with code and it is also the case with Verilog.
I like to have a customizable text editor so I will recommend a combination that works pretty well for me, Atom plus some extensions like:
*aligner-verilog
* language-verilog
* linter
* linter-ui
* linter-verilog
* file-icons (not necessary but will make your life easier)
Installing Atom is as simple as it can gets, just go to: [atom.io](atom.io)
Also you can install themes if you like different color palettes.
#### IT WON'T WORK LIKE THIS!
We need to install a compiler for checking our syntax errors when writting in Atom. I highly recommend using [Icarus Verilog](http://iverilog.icarus.com/)
Installation is easy but sometimes it wont work at first, in my case I needed to add it to my environment variables, more info on installation can be found [here](http://www.swarthmore.edu/NatSci/mzucker1/e15_f2014/iverilog.html).
## What am I aiming for with this?
I am trying to create modules that maybe we won't use on class just for fun and also create some guides for my peers.
