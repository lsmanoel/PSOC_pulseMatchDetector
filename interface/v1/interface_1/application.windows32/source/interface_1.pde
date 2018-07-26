/**
 * Simple Read
 * 
 * Read data from the serial port and change the color of a rectangle
 * when a switch connected to a Wiring or Arduino board is pressed and released.
 * This example works with the Wiring / Arduino program that follows below.
 */

import processing.serial.*;
import interfascia.*;
import grafica.*;

// -----------------------------------------------------------------------------
//GUI CONFIG -------------------------------------------------------------------
GUIController guiCtrl;

IFButton adxl_config_button, scanOn_button, scanOff_button, saveData_button; 
IFButton bitWheelConfig, bitWheelConfig_button_up, bitWheelConfig_button_down;
IFButton evi_data_button;

// -----------------------------------------------------------------------------
//SERIAL CONFIG ----------------------------------------------------------------
Serial myPort;  // Create object from Serial class

int buffer_size=64;
int media_in, media_anterior, count_media_in = 0;

String data_evi_str;
  
byte data_in[] = new byte[buffer_size];      // Data received from the serial port
int data_in_int[] = new int[buffer_size]; 
int count_data_in = 0;


int data_out_size = buffer_size * 10000;
byte data_out[] = new byte[data_out_size];
int count_data_out = 0;

boolean serial_ready;
int serial_mode;

int  EXIT_STATE = 0;
int  START_STATE = 1;
int  STANDBY_STATE = 2;
int  ADXL_CONFIG_STATE = 3;
int  SCANON_STATE = 4;
int  SCANOFF_STATE = 5;
int  SAMPLER_STATE = 6;
int  BITWHELL_CONFIG_DOWN_STATE = 7;
int  BITWHELL_CONFIG_UP_STATE = 8;
int  SCAN_EVIRONMENT_STATE = 9;

// -----------------------------------------------------------------------------
// PLOT CONFIG -----------------------------------------------------------------
// Prepare the points for the plot
int nPoints = 100;
GPointsArray points = new GPointsArray(nPoints);
GPlot plot;
  
void setup() 
{  
  // -----------------------------------------------------------------------------
  size(1200, 800);
  background(255); 
  print("Start!\n");
  textSize(32);
  
  // -----------------------------------------------------------------------------
  //SERIAL CONFIG ----------------------------------------------------------------
  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[0];
  
  myPort = new Serial(this, portName, 57600);
  //myPort = new Serial(this, "COM3", 57600);
  serial_ready = false;
  data_in[0]=0;
  data_in[1]=0;
  data_in[2]=0;
  data_in[3]=0;
  
  // -----------------------------------------------------------------------------
  //INTERFASCIA CONFIG -----------------------------------------------------------
  guiCtrl = new GUIController (this);

  adxl_config_button = new IFButton("ADXL ReConfig", 40, 40, 80, 17);
  scanOn_button = new IFButton("SCAN ON", 120, 40, 80, 17);
  scanOff_button = new IFButton("SCAN OFF", 200, 40, 80, 17);
  saveData_button = new IFButton("SAVE DATA", 280, 40, 80, 17);
  bitWheelConfig = new IFButton("BW Config", 400, 40, 80, 17);
  bitWheelConfig_button_up = new IFButton("BW +", 480, 40, 80, 17);
  bitWheelConfig_button_down = new IFButton("BW -", 560, 40, 80, 17);
  evi_data_button = new IFButton("Environment:", 740, 40, 100, 17);
  
  adxl_config_button.addActionListener(this);
  scanOn_button.addActionListener(this);
  scanOff_button.addActionListener(this);
  saveData_button.addActionListener(this); 
  bitWheelConfig.addActionListener(this);
  bitWheelConfig_button_up.addActionListener(this);
  bitWheelConfig_button_down.addActionListener(this);
  evi_data_button.addActionListener(this);
  
  guiCtrl.add(adxl_config_button);
  guiCtrl.add(scanOn_button);
  guiCtrl.add(scanOff_button);
  guiCtrl.add(saveData_button);
  //guiCtrl.add(bitWheelConfig);
  guiCtrl.add(bitWheelConfig_button_up);
  guiCtrl.add(bitWheelConfig_button_down);
  guiCtrl.add(evi_data_button);
  
  
  // -----------------------------------------------------------------------------
  // Ploter CONFIG ---------------------------------------------------------------
  // Create a new plot and set its position on the screen
  plot = new GPlot(this);
  
  plot.setPos(15, 100);
  plot.setDim(1100, 575);
  
  plot.getXAxis().setAxisLabelText("Tempo");
  plot.getYAxis().setAxisLabelText("Amplitude");
  
  plot.setPoints(points);
  
  plot.defaultDraw();
  
  // -----------------------------------------------------------------------------
  // ISP SERIAL CONFIG -----------------------------------------------------------   
  myPort.clear();
  myPort.buffer(buffer_size);//Ativar evento de serial
}

void scan_data_evi()
{
  // -----------------------------------------------------------------------------
  // SCAN EVIRONMENT DATA --------------------------------------------------------  
  data_in[0]=127;
  data_in[1]=127;
  data_in[2]=127;
  data_in[3]=127;
  myPort.clear();
  
  myPort.buffer(4);
   
  while(serial_ready == false)
  {
     myPort.write(SCAN_EVIRONMENT_STATE);
     delay(100);
     //serial_ready = true;
  }
  serial_ready = false;
  
  myPort.clear();
  myPort.buffer(buffer_size);//Ativar evento de serial
}

void draw_data_evi()
{
  // -----------------------------------------------------------------------------
  // DISP EVIRONMENT DATA --------------------------------------------------------  
  fill(255, 255, 255);
  rect(842, 37, 200, 20, 3, 3, 3, 3);
  
  fill(0, 152, 203); 
  textSize(16);
  
  text("Humid:", 845, 54);
  text(data_in[0], 900, 54);
  text("%", 920, 54);
  
  text("Temp:", 955, 54);
  text(data_in[2], 1005, 54);
  text("C", 1025, 54);
}

void draw()
{  
    if(serial_ready)
    {      
      for (int i = 0; i < buffer_size; i++)
      {     
        data_in_int[i] = int(data_in[i]) + byte(128);
        
        if(count_data_out < data_out_size)
        {
          data_out[count_data_out] = data_in[i];
          count_data_out++;
        }
        else
        {
          count_data_out=0;          
        }
        
        media_in = media_in + data_in_int[i];      
      }      
      
      media_in=media_in/buffer_size;
      //media_in = (2*media_in + media_anterior)/3;
      
      count_media_in++;
      if(count_media_in > 1200-100)
      {
        count_media_in = 0;
        background(255);
        plot.defaultDraw();
        draw_data_evi();
      }
      
      fill(255, media_in - media_anterior + 127, media_in);
      
      ellipse(count_media_in+80, 400 - 2*media_in, 6, 6);
      
      media_anterior =  media_in;
      
      serial_ready = false;
    }
    else
    {     
      //fill(0, 102, 153); 
      //text("stand by", 10, 30);
    }
}

void serialEvent(Serial p) 
{
   data_in = p.readBytes();

   serial_ready = true;     
     
   //text("serial read", 450, 30);   
}

void actionPerformed (GUIEvent e) {
  if (e.getSource() == adxl_config_button) 
  {
    myPort.write(ADXL_CONFIG_STATE);
  } 
  else if (e.getSource() == scanOn_button) 
  {
    myPort.write(SCANON_STATE);
  }
  else if (e.getSource() == scanOff_button) 
  {
    myPort.write(SCANOFF_STATE);
  }
  else if (e.getSource() == bitWheelConfig_button_up) 
  {
    myPort.write(BITWHELL_CONFIG_UP_STATE);
  }
  else if (e.getSource() == bitWheelConfig_button_down) 
  {
    myPort.write(BITWHELL_CONFIG_DOWN_STATE);
  }
  else if (e.getSource() == saveData_button) 
  {
    saveBytes("output.dat", data_out);
  }
  else if (e.getSource() == evi_data_button) 
  {
    myPort.write(SCANOFF_STATE);
    
    scan_data_evi(); 
    draw_data_evi(); 
  }
}