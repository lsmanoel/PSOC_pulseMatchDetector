/**
 * Simple Read
 * 
 * Read data from the serial port and change the color of a rectangle
 * when a switch connected to a Wiring or Arduino board is pressed and released.
 * This example works with the Wiring / Arduino program that follows below.
 */

import processing.serial.*;
import interfascia.*;
import lord_of_galaxy.timing_utils.*;

Stopwatch s;
int timeNow;
// -----------------------------------------------------------------------------
//GUI CONFIG:
GUIController guiCtrl;

IFButton setRegs_button, scanOn_button, scanOff_button, saveData_button; 

IFTextField count_th_Reg_1;
String count_th_Reg_1_value="";
int count_th_Reg_1_value_int=255;

int disp_mode;

// -----------------------------------------------------------------------------
//SERIAL CONFIG:
Serial myPort;  // Create object from Serial class

int scan_size = 4;
int media_in, media_anterior, count_media_in = 0;
int ac_1;

String data_evi_str;
  
byte data_in[] = new byte[scan_size];      // Data received from the serial port
int data_in_int[] = new int[scan_size]; 
int count_data_in = 0;

boolean serial_ready;
int serial_mode;

// -----------------------------------------------------------------------------
// COMANDOS DE CONTROLE:
char EXIT_STATE = '0';
char START_STATE = '1';
char STANDBY_STATE = '2';
char SCANON_STATE = '3';
char SCANOFF_STATE = '4';
char SAMPLER_STATE = '5';
char SETREGS_STATE = '6'; 

void setup() 
{  
  // -----------------------------------------------------------------------------
  size(680, 620);
  background(255); 
  print("Start!\n");
  textSize(32);
  // -----------------------------------------------------------------------------
  //Creating a stopwatch to keep time
  s = new Stopwatch(this);
  



  //myPort = new Serial(this, portName, 57600);
  //myPort = new Serial(this, "COM8", 38400);
  myPort = new Serial(this, "COM8", 57600);
  
  serial_ready = false;
  
  // -----------------------------------------------------------------------------
  //INTERFASCIA CONFIG -----------------------------------------------------------
  guiCtrl = new GUIController (this);

  count_th_Reg_1 = new IFTextField("Text Field", 30, 100, 100);
  count_th_Reg_1.addActionListener(this);
  
  
  setRegs_button = new IFButton("Config.", 40, 40, 80, 17);
  scanOn_button = new IFButton("SCAN ON", 120, 40, 80, 17);
  scanOff_button = new IFButton("SCAN OFF", 200, 40, 80, 17);
  saveData_button = new IFButton("SAVE DATA", 280, 40, 80, 17);
   
  setRegs_button.addActionListener(this);
  scanOn_button.addActionListener(this);
  scanOff_button.addActionListener(this);
  saveData_button.addActionListener(this); 

  textSize(15);
  fill(0);
  text("Entradas para configuração de registradores:", 30, 90); 
      
  guiCtrl.add(count_th_Reg_1);
 
  textSize(15);
  fill(0);
  text("Sequência de medidas:", 30, 240); 
  
  guiCtrl.add(setRegs_button);
  guiCtrl.add(scanOn_button);
  guiCtrl.add(scanOff_button);
  guiCtrl.add(saveData_button);
  
  // -----------------------------------------------------------------------------
  // ISP SERIAL CONFIG -----------------------------------------------------------   
  myPort.clear();
  myPort.buffer(scan_size);//Ativar evento de serial
}

void draw()
{   
    if(serial_ready)
    {      
      background(255);
      
      textSize(20);
      fill(0);
      text(timeNow, 30+240, 180);
      text(s.hour() + ":" + nf(s.minute(), 2) + ":" + nf(s.second(), 2) + ":" + nf(s.millis(), 3), 30+240, 150);    
      text("ms", 30+400, 180);
      // -----------------------------------------------------------------------------
      textSize(15);
      fill(0);
      text("Tamanho do contador (default: 255):", 30, 90);   
      
      textSize(12);
      fill(0);    
      text(count_th_Reg_1_value_int, 30+110, 100 + 14);
      
      textSize(15);
      fill(0);
      text("Sequência (buffer):", 30, 150); 
  
      for (int i = 0; i < scan_size; i++)
      {          
        // -----------------------------------------------------------------------------
        data_in_int[i] = data_in[i] + 128;
        
        ac_1 = ac_1 + data_in_int[i];
        
        textSize(50);
        fill(0);
        text(data_in_int[i], 30, 200+50*i);
      }   
      
      fill(0);
      text(ac_1, 30 + 240, 250);
      float delta_ac_1 = float(ac_1)/float(timeNow);
      text(delta_ac_1, 30 + 260, 320); 
      
      textSize(15);
      fill(0);  
      text("fótons medidos", 30+400, 270);
      text("fótons/ms", 30+400, 340);

      serial_ready = false;
    }
}

void serialEvent(Serial p) 
{
  timeNow = s.time();
  data_in = p.readBytes();
  serial_ready = true;       
}

void actionPerformed(GUIEvent e) {
  if (e.getMessage().equals("Completed")) {
    if(e.getSource() == count_th_Reg_1)
    {
      count_th_Reg_1_value = count_th_Reg_1.getValue();
      count_th_Reg_1_value_int = Integer.parseInt(count_th_Reg_1_value);
      myPort.write(SETREGS_STATE);
      myPort.write(count_th_Reg_1_value_int);
    }
  }
  
  if (e.getSource() == setRegs_button)
  {
    myPort.write(SETREGS_STATE);   
  }
  else if (e.getSource() == scanOn_button) 
  {
    myPort.write(SCANON_STATE);
    //Start the stopwatch
    s.start(); 
  }
  else if (e.getSource() == scanOff_button) 
  {
    myPort.write(SCANOFF_STATE);
    //s.pause();
  }
  else if (e.getSource() == saveData_button) 
  {
    //saveBytes("output.dat", data_out);
  }
}