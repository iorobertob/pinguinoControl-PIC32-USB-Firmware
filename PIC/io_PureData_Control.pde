/*----------------------------------------------------- 
io_PureData_Control.pde

Version: 1.1

Author:  Roberto Becerra--<http://iobridger.wordpress.com/>
Date: Mon Jul 15 15:47:01 2013
Description:
This pde includes io_cdc_pd_control_1_1.c which is a source
code containing functions to carry USB CDC communication. 
the source code uses a MIDI type of formattin for the messages, 
similar to that used by Firmata. 
This pde and the source are here used together with a set of 
Pure Data patches enabling communication in real time between 
Pinguino and Pure Data. 

-----------------------------------------------------*/

#include <puredata.c>

// variables will change:

unsigned char inputData[3], Dgtl[22];    //Buffers to read/send data through CDC
unsigned long int Anlg[8];              //16 bit values

int inputL;                             //variable to store the length of the input Data
 
void setup() {

    PureData.init();                       /* Initialize the communication. It sets the ADC module and Ports as Inputs
                                        * or outputs. LED1 (D13) is configured as output and UserButton (D2)as input
                                        */                   
}

void loop(){   
                             
    inputL = PureData.communicate(inputData, Dgtl, Anlg);  // Call function that deals with any request sent from outside via CDC,
                                                // only if it is a new instruction.     
      
}

