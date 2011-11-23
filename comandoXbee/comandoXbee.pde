int forwardPin = 2;
int backwardPin = 3;
int leftPin = 4;
int rightPin = 5;
int stopPin = 6;
int lastPin = 0;
//left right fw bk stp
int pins[] = {4,5,2,3,6,0};
int  pinsState[5];
char messages[5] = {'a','d','w','s','p'};

void setup() 
{
  Serial.begin(9600);

  //Set the pins as INPUTs
  pinMode(forwardPin,INPUT);
  pinMode(backwardPin,INPUT);
  pinMode(leftPin,INPUT);
  pinMode(rightPin,INPUT);
  pinMode(stopPin,INPUT);
  
  //Set the pins' default value as HIGH
  digitalWrite(forwardPin,HIGH);
  digitalWrite(backwardPin,HIGH);
  digitalWrite(leftPin,HIGH);
  digitalWrite(rightPin,HIGH);
  digitalWrite(stopPin,HIGH);
}


void loop() 
{
 for (int count =0; count<5; count++)
 {
   pinsState[count] = digitalRead(pins[count]);
   delay(10);
   if(pinsState[count]==0 && lastPin != pins[count])
  {
    Serial.println(messages[count]);
    lastPin = pins[count];
  }
 }
 delay(10);
}
