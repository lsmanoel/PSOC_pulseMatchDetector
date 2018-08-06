import org.quark.jasmine.*;
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
//SERIAL CONFIG: INPUT
Serial myPort;  // Create object from Serial class

int scan_size = 6;
byte data_in[] = new byte[scan_size];      // Data received from the serial port
int data_in_int[] = new int[scan_size]; 
int count_data_in = 0;

boolean serial_ready;
int serial_mode;

// -----------------------------------------------------------------------------
//FILE CONFIG: OUTPUT
static final int  array_output_size = 16;
int  array_output_n=0;

float ac_1, ac_2, ac_3;
float delta_ac_1, delta_ac_2, delta_ac_3;

float ac_1_Array_output[] = new float[array_output_size];
float delta_ac_1_output[] = new float[array_output_size];

float ac_2_Array_output[] = new float[array_output_size];
float delta_ac_2_output[] = new float[array_output_size];

float ac_3_Array_output[] = new float[array_output_size];
float delta_ac_3_output[] = new float[array_output_size];

PrintWriter output_file;
// -----------------------------------------------------------------------------
// COMANDOS DE CONTROLE:
char EXIT_STATE = '0' - 48;
char START_STATE = '1' - 48;
char STANDBY_STATE = '2' - 48;
char SCANON_STATE = '3' - 48;
char SCANOFF_STATE = '4' - 48;
char SAMPLER_STATE = '5' - 48;
char SETREGS_STATE = '6' - 48; 


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
  
  //output_file = createWriter("output.txt");
}

void draw()
{   
    if(serial_ready)
    {
      serial_ready = false;
      
      background(255);
      
      textSize(20);
      fill(0);
      
      text(s.hour() + ":" + nf(s.minute(), 2) + ":" + nf(s.second(), 2) + ":" + nf(s.millis(), 3), 30+240, 150);    
      text("ms", 30+400, 180);
      
      text(timeNow, 30+240, 180);
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
        data_in_int[i] = int(data_in[i]);
      }  
      ac_1 = ac_1 + data_in_int[0] + 255*data_in_int[3];
      ac_2 = ac_2 + data_in_int[1] + 255*data_in_int[4];
      ac_3 = ac_3 + data_in_int[2] + 255*data_in_int[5];
        
      textSize(25);
      fill(0);
      for (int i = 0; i < scan_size/3; i++)
      {  
        text(data_in_int[0 +3*i], 30, 200+25*(0 +3*i));
        text(data_in_int[1 +3*i], 30, 200+25*(1 +3*i));
        text(data_in_int[2 +3*i], 30, 200+25*(2 +3*i));
      }   
      //----------------------------------------------------
      fill(0);
      text(ac_1, 30 + 240, 250);
      float delta_ac_1 = ac_1/float(timeNow);
      text(delta_ac_1, 30+260, 250+30); 
      
      text(ac_2, 30 + 240, 250+100);
      float delta_ac_2 = ac_2/float(timeNow);
      text(delta_ac_2, 30 + 260, 250+30+100); 
      
      text(ac_3, 30 + 240, 250+200);
      float delta_ac_3 = ac_3/float(timeNow);
      text(delta_ac_3, 30 + 260, 250+30+200); 
      
      textSize(15);
      fill(0);
      
      text("Entrada 1:", 30+240, 225);
      text("fótons medidos", 30+400, 250+20);
      text("fótons/ms", 30+400, 250+30+20);
      
      text("Coincidências:", 30+240, 225+100);
      text("fótons medidos", 30+400, 250+20+100);
      text("fótons/ms", 30+400, 250+30+20+100);
      
      text("Entrada 2:", 30+240, 225+200);
      text("fótons medidos", 30+400, 250+20+200);
      text("fótons/ms", 30+400, 250+30+20+200);
      
      
      ac_1_Array_output[array_output_n] = ac_1;
      delta_ac_1_output[array_output_n] = delta_ac_1;
      
      ac_2_Array_output[array_output_n] = ac_2;
      delta_ac_2_output[array_output_n] = delta_ac_2;
      
      ac_3_Array_output[array_output_n] = ac_3;
      delta_ac_3_output[array_output_n] = delta_ac_3;
      
      
      if(array_output_n < scan_size)
      {
        array_output_n = array_output_n +1;  
      }
      else
      {
        //output_file.print(ac_1);
        //output_file.print(delta_ac_1);
        //output_file.print(ac_2);
        //output_file.print(delta_ac_2);
        //output_file.print(ac_3);
        //output_file.print(delta_ac_3);
        //output_file.print("\n");
        
        array_output_n = 0;
      }
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
      myPort.write(byte(count_th_Reg_1_value_int));
      
      textSize(12);
      fill(0);    
      text(count_th_Reg_1_value_int, 30+110, 100 + 14);
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
    //saveStream("output.dat", data_out);
  }
}