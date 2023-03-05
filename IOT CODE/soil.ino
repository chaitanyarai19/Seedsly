//Seedsly Soil Detection System 


int led = 12;
int led1 = 14; 
int buzzer = 13; 
int sensor = A0;

int val; 

void setup() {
  Serial.begin(9600);
  pinMode(A0,INPUT); 
  pinMode(12,OUTPUT); 
  pinMode(13,OUTPUT);
}

void loop() { 
  int val = analogRead(A0); 
  if(val < 200) 
  {
    
  digitalWrite(13,HIGH); 
  digitalWrite(12,HIGH);
  digitalWrite(8,LOW);
  }
  else
  {
  
  digitalWrite(13,LOW);
  digitalWrite(12,LOW);
  digitalWrite(8,HIGH);
  
  }
  delay(400);
}
