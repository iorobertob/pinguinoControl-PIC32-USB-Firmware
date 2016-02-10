////////////////////////////////////////////////////////////////
//////////////.IOBRIDGER/////////io_robertob@hotmail.com////////
/////////////////////////////////////////////////////June/2014//

There are two ways of performing control over USB with Pinguino.

The first one is to use Pure Data as a controlling interface. In the Control_from_PureData folder you can find the patches 
needed to do this. These patches include a GUI that displays the control buttons tha modify the microcontorller's states and monitors its inputs. 

The second method of control is using an Android device. The Android app to do so is downloadable from the Play Store, it is called Pinguino Control. By using this app, you can send messages to a computer running the Pure Data or Max MSP patches that are found in the Control_from_Android folder. These patches redirect the control messages over a USB cable from the computer to Pinguino. In other words, Android sends messages over WiFi to a Pure Data(or Max MSP) patch in a computer, and the patch sends these messages over USB to Pinguino. 

The firmware needed for these to control modes is the same and is found in the PIC folder. 