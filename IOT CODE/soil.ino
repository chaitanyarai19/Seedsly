

/* Comment this out to disable prints and save space */
#define BLYNK_PRINT Serial


#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>
#include<WiFiClient.h>
#include<ESP8266WebServer.h>

char auth[] = "JyEvnHuEW5LkQrTdiHUu0mgmptCL6QQO";

int buzzer = 15; //buzzer
int led_green = 13; 
int led_red = 12; 

// Your WiFi credentials.
// Set password to "" for open networks.
char ssid[] = "Redmif";
char pass[] = "123456789";

ESP8266WebServer server(80);
String page="";
double data;

void setup(void)
{
  Blynk.begin(auth, ssid, pass);
  
  pinMode(A0,INPUT);
  pinMode(buzzer, OUTPUT);
pinMode(led_green, OUTPUT);
pinMode(led_red, OUTPUT);
digitalWrite(led_green, LOW);
digitalWrite(led_red, LOW);

  delay(1000);
  // Debug console
  Serial.begin(9600);
  
  WiFi.begin(ssid, pass);
  
  Serial.println("");

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connect to");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
  server.on("/",[](){
  page="<body  style='background-image:url(http://chaitanyarai.in/seedsly.jpeg );'><center><h1><u style='color:white;'><b style='color:yellow;'>Data Send To Soil Moisture Sensor to Web Server </b></u></h1><u style='color:white;'><h2 style='color:yellow;'>Soil Moisture Data:</h2></u><h1 style='color:white;'> " + String(data)+ "</h1></center><body>";
  server.send(200,"text/html",page);
});
server.begin();
Serial.println("Web Server Started!");
}

void loop(void)
{
Blynk.run();
  
  float datal=analogRead(A0);
  data=100-((datal/1024)*100);
  if(data<=55){
    Serial.println (data);
  Serial.println("Soil Need's Water");
  digitalWrite(led_green, HIGH);
  digitalWrite(led_red, LOW);
  digitalWrite(buzzer, LOW);
 
  
  }
  else{
   Serial.println (data);
  Serial.println("Soil is good");
  digitalWrite(led_green, LOW);
  digitalWrite(led_red, HIGH);
  digitalWrite(buzzer, HIGH);
  Blynk.notify("Soil is good now!!!. Turn off the water pump ");
  Blynk.email("Alert!!!","Soil is good now!!!. Turn off the water pump ");
  
  }
  delay(5000);
  server.handleClient();
 
}
