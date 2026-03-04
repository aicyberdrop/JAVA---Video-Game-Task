//CHAR MOVEMENT & BOUNDARIES VARIABLES
int xPos = 200;
int xAR = 175;
int xAL = 215;
int move =1;
int halfBodyWidth = 50/2;
int farLeft = 80+halfBodyWidth;
int farRight = 320-halfBodyWidth;
int HBoxX = 50;
int HBoxY = 40;
float idealTreeWidth = 30;

//BACKGROUND VARIABLES
int distMove = 0;
int floorSpeed = 1;
int floorY2 = 50;

//NPC DOG
int DogBodX = 20;
int DogBodY = 50;
float DogPosX = random(80,320);
int DogPosY = 0;

int[] posDogX = new int[6];
int[] posDogY = new int[6];
int[] dogSpeed = new int[6];


//TREE VARIABLES
float treeDistance = random(200,300);
float treeDistanceR = random(200,300);
int treeMove = 0;

float treeBulbX = random(0,80);
float treeXPOS = random(0,80);
float treeXPOS2 = random(0,80);
float treeXPOS3 = random(0,80);

float treeRXPOS = random(320,400);
float treeRXPOS2 = random(320,400);
float treeRXPOS3 = random(320,400);

float treeSize = random(1,1.5);
float treeSize2 = random(1,1.5);
float treeSize3 = random(1,1.5);
float treeSize4 = random(1,1.5);
float treeSize5 = random(1,1.5);
float treeSize6 = random(1,1.5);

int randBulb = (int)random(5, 10);
int randBulb2 = (int)random(5, 10);
int randBulb3 = (int)random(5, 10);
int randBulb4 = (int)random(5, 10);
int randBulb5 = (int)random(5, 10);
int randBulb6 = (int)random(5, 10);

int tRRadius = (int)random(35,60);
int tRRadius2 = (int)random(35,60);
int tRRadius3 = (int)random(35,60);

int tLRadius = (int)random(35,60);
int tLRadius2 = (int)random(35,60);
int tLRadius3 = (int)random(35,60);

//COKE VARIABLES
float cokeXPOS = random(80,320);
int cokeYPOS = 0;
int[] posCokeX = new int[3];
int[] posCokeY = new int[3];
int[] cokeSpeed = new int [4];

//MISC
PFont f;
String Score = "Score:";

//TREE FUNCTION(COMPOUND DATA)


void trees(float treeCenterX, float treeCenterY, float CRadius, float treeScale, int bulb) {
      strokeWeight(3);
      stroke(#3F301D);
      
      float treeWidth = treeScale*idealTreeWidth;
      
      CRadius = CRadius * treeScale;
      
      fill(0,180,0);
      
      float bulbAngle = radians(360 / bulb);
    
      for(int i = 0; i < bulb ; i += 1){
        bulbAngle += radians(360 / bulb);
        float x = treeWidth * cos(bulbAngle) + treeCenterX;
        float y = treeWidth * sin(bulbAngle) + treeCenterY;
        strokeWeight(2);
        line(treeCenterX, treeCenterY, x, y);
        
        strokeWeight(0);
        circle(x, y, CRadius);
      }
      
}
  //coke (no sugar) FUNCTION
  
  void Coke( float cokeX, float cokeY){
  float cokeLength = 20;
  stroke(2);
  fill(200,200,200);
  rect(cokeX,cokeY, cokeLength, cokeLength+10);
  stroke(1);
  fill(255,0,0);
 
  rect(cokeX, cokeY+(cokeLength/4), cokeLength, cokeLength);
  fill(0);
 
  rect(cokeX, cokeY+(cokeLength/2), cokeLength, cokeLength/4);
  
}
       
void PedDog( float pedCenterX, float pedCenterY, float pedBodX, float pedBodY){
 
  fill(184,109,41);
float lineLengthP = 20;
  rect(pedCenterX-(lineLengthP*0.1), pedCenterY-(lineLengthP*0.5), lineLengthP/4, pedBodY-90);
  ellipse(pedCenterX, pedCenterY, pedBodX, pedBodY);
  ellipse(pedCenterX+(lineLengthP-19.5), pedCenterY+(lineLengthP*1.3), pedBodX/1.7, pedBodY/1.3);
  ellipse(pedCenterX+(lineLengthP*0.3), pedCenterY+(lineLengthP*1.13), pedBodX/2.7, lineLengthP+3);
  ellipse(pedCenterX+(lineLengthP*-0.3), pedCenterY+(lineLengthP*1.13), pedBodX/2.7, lineLengthP+3);
 fill(0);
  circle(pedCenterX, pedCenterY+(lineLengthP*2.2), lineLengthP/4);
  
  
}       
      
// SETUP
void setup()
{
  size(400,600);
f = createFont("AvenirNextCondensed-Bold",100,true);


for(int i = 0; i<posDogY.length; i++){
  posDogX[i] = (int)random(80,320);
  posDogY[i] = (int)random(-400,0);
  dogSpeed[i] = (int)random(3,10);
}

for(int j = 0; j<posCokeX.length; j++){
posCokeX[j] = (int)random(80,320);
posCokeY[j] = (int)random(-400,0);
cokeSpeed[j] = 4;
}


}




void draw(){
  
  //base walley's walk
  background(0,120,0);
  fill(#D3D3D3);
  strokeWeight(2);
  stroke(0);
  rect(80,-1,252,601);
   
   
  //loop (walley's walk)
   for(int floorX=80; floorX<350;floorX=floorX+50){  
   for(int floorY=0; floorY<600;floorY=floorY+50){
 
   strokeWeight(2);
   line(floorX,0, floorX, 600);
   line(80,floorY+distMove,330,floorY+distMove);     
   }

   
   distMove = distMove+floorSpeed;
   if(distMove>50){
     distMove=0;
   }
   if(floorSpeed > 1){
     floorSpeed = 1;
     
   }
  }
      
// LOOP (TREES)
for(float treeBulbX = 0; treeBulbX<80; treeBulbX = 80 ){
      for (float treeBulbY = 0; treeBulbY<10; treeBulbY = treeBulbY+200){
    
         //LEFT SIDE
         trees(treeBulbX + treeXPOS, treeBulbY+treeMove, tRRadius, treeSize, randBulb); 
         trees((treeBulbX + treeXPOS2), (treeBulbY+treeDistance)+treeMove, tRRadius2, treeSize2, randBulb2); 
         trees((treeBulbX + treeXPOS3), (treeBulbY+(treeDistance*2))+treeMove, tRRadius3, treeSize3, randBulb2); 
   
         treeMove = treeMove+1;
         if(treeMove>250){
            treeMove=0;
            
         }
      }
      if(treeMove==0){
         treeXPOS = (int)random(0,80);
         treeXPOS2 = (int)random(0,80);
         treeXPOS3 = (int)random(0,80);
         
         treeDistance = random(200,300);
         
         treeSize = random(1,1.5);
         treeSize2 = random(1,1.5);
         treeSize3 = random(1,1.5);
        
         randBulb = (int)random(5,10);
         randBulb2 = (int)random(5,10);
         randBulb3 = (int)random(5,10);
        
         tRRadius = (int)random(35,60);
         tRRadius2 = (int)random(35,60);
         tRRadius3 = (int)random(35,60);
                  
      }
   }

    for(float treeRightX = 0; treeRightX<400; treeRightX = 400){      
      for(float treeRightY = 0; treeRightY<10; treeRightY = treeRightY+200){
       trees(treeRightX +treeRXPOS, treeRightY + treeMove, tLRadius , treeSize4, randBulb4);
       trees(treeRightX +treeRXPOS2, (treeRightY+treeDistanceR) +treeMove, tLRadius2, treeSize5, randBulb5);
       trees(treeRightX +treeRXPOS3, (treeRightY+(treeDistanceR*2)) +treeMove,tLRadius3, treeSize6, randBulb6);
       
       treeMove = treeMove+1;
       if(treeMove>250){
         treeMove=0;
       }
      }
      if(treeMove==0){
        treeRXPOS = (int)random(330,400);
        treeRXPOS2 = (int)random(330,400);
        treeRXPOS3 = (int)random(330,400);
        
        treeDistanceR = random(200,300);
        
        treeSize4 = random(1,1.5);
        treeSize5 = random(1,1.5);
        treeSize6 = random(1,1.5);
        
        randBulb4 = (int)random(5,10);
        randBulb5 = (int)random(5,10);
        randBulb6 = (int)random(5,10);
        
        tLRadius = (int)random(35,60);
        tLRadius2 = (int)random(35,60);
        tLRadius3 = (int)random(35,60);
      }
    }
      
      
      
 //PLAYER CHARACTER
  fill(200,150,150);
 rect(xAR, 520, 10, 30);
rect(xAL, 520, 10, 30);
  fill(0,0,200);
ellipse(xPos, 550, 50, 25);
  fill(200,150,150);
circle(xPos, 550,25);

//NPC  (DOG)
  
  for(int i = 0; i < posDogX.length; i++){
    if (posDogY[i] == 0) {
     posDogX[i] = (int)random(80,320); 
    }
   PedDog(posDogX[i],posDogY[i],DogBodX,DogBodY);
  }

for(int i = 0; i<posDogY.length; i++){
  if (posDogY[i] > 600){
    posDogY[i] = (int)random(-400,0);
    dogSpeed[i] = (int)random(3,10);
  }
   posDogY[i] = posDogY[i] + dogSpeed[i];
}




//PED COLLISIONS

float CharHBoxX = xPos-xPos*0.121;
float CharHBoxY = 520;
float CharHBoxWidth = 50;
float CharHBoxHeight = 40;

  for(int i = 0; i < posDogX.length; i++){
    float curYPos = posDogY[i];
    
    float DogHBoxX = posDogX[i]-(DogBodX*0.5);
    float DogHBoxY = curYPos -DogBodY/2;
    float DogHBoxWidth = 25;
    float DogHBoxHeight = 55;
    
    if (DogHBoxX < CharHBoxX + CharHBoxWidth &&
        DogHBoxX + DogHBoxWidth > CharHBoxX &&
        DogHBoxY < CharHBoxY + CharHBoxHeight &&
        DogHBoxHeight + DogHBoxY > CharHBoxY) {
         
      noLoop();
      textAlign(CENTER);
      textSize(20);
      text("YOU LOSE !", 200,300);

  }
  }
   
//ARRAY FOR COKE   
  for(int j = 0; j < posCokeX.length; j++){
    if (posCokeY[j] == 0) {
     posCokeX[j] = (int)random(80,320); 
    }
    Coke(posCokeX[j], posCokeY[j]);
  }
for(int j = 0; j<posCokeY.length; j++){
  if (posCokeY[j] > 600){
    posCokeY[j] = (int)random(-200,0);
    cokeSpeed[j] = cokeSpeed[j]+1;
  }
   posCokeY[j] = posCokeY[j] + cokeSpeed[j];
   if(cokeSpeed[j] > 4){
     cokeSpeed[j] = 4;
    
   //}
}
}

 //COKE COLLISIONS
 
 for(int j = 0; j < posCokeX.length; j++){
 float cokeXBOX = posCokeX[j];
 float cokeYBOX = posCokeY[j];
 float cokeWDBox = 20;
 float cokeHTBox = 30;
 
 if (cokeXBOX < CharHBoxX + CharHBoxWidth &&
    cokeXBOX + cokeWDBox > CharHBoxX &&
    cokeYBOX < CharHBoxY + CharHBoxHeight &&
    cokeHTBox + cokeYBOX > CharHBoxY) {
      
      posCokeY[j] = 0;
      posCokeX[j] = (int)random(80,320);
      
     
  
      
    }
    }
    }



//controls
void keyPressed(KeyEvent e) {
  if (e.getKeyCode() == 65) {
    moveBody(-20);
  }
  if (e.getKeyCode() == 68) {
    moveBody(20);
  }


}

void moveBody(int i) {

  // If i is less than zero user wants to move to the left
  if (i<0) {
    if (xPos<farLeft) {
      return;
    }
  }
  // If i is greater than zero user wants to move to the right
  if (i>0) {
    if (xPos>farRight) {
      return;
    }

  }
  // move entire body by i
   xPos+=i;
   xAL+=i;
   xAR+=i;
   //HBoxX=i;
}
