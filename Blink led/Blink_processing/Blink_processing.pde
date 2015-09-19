/* 
   Stampiamo un quadrato che si accenderà e spegnerà a seconda 
   del valore letto da seriale.
   Riceviamo dalla seriale d'Arduino un valore digitale 0/1 .
*/
import processing.serial.*; 
 
Serial port;                             // Create object from Serial class 
int val;                                 // Data received from the serial port 
 
void setup() { 
  size(200, 200); 
  frameRate(10); 
  // apriamo una porta d'ascolto seriale alla velocità 9600 e "/dev/ttyACM0" 
  port = new Serial(this,"/dev/ttyACM0", 9600); 
} 

void draw() { 
  if (0 < port.available()) {            // If data is available,
    val = port.read();                   // read it and store it in val
  } 
  background(255);                       // Set background to white
  if (val == 0)  {                       // If the serial value is 0,
    fill(0);                             // set fill to black
  } else {                               // If the serial value is not 0,
    fill(204);                           // set fill to light gray
  } 
  rect(50, 50, 100, 100);
} 