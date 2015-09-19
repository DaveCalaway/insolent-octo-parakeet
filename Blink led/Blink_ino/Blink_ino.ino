// Accendiamo il led 13 sull'Arduino ed inviamo un segnale d'accensione d'un led 
// virtuale su processing, tramite seriale.

void setup() {
  pinMode(13, OUTPUT);
  Serial.begin(9600); 
}

void loop() {
  digitalWrite(13, HIGH);   
  Serial.write(1);   // Spediamo 1 sulla seriale verso processing
  delay(1000);      
          
  digitalWrite(13, LOW);    
  Serial.write(0);  // Spediamo 0 sulla seriale verso processing
  delay(1000);              
}
