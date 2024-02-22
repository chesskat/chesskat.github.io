
void setup() {
    size(400, 400); // For Processing
}

var centerX = 200; // fish 
var centerY = 100;
var bodyLength = 118;
var bodyHeight = 74;
var bodyColor = color(162, 0, 255);
var fcolor = color(0, 68, 255);

var tailWidth = bodyLength/4;
var tailHeight = bodyHeight/2;

var finWidth = bodyLength/4;
var finHeight = bodyHeight/4; 

var pebbleX = 56; // pebble 
var pebbleY = 50;
var pebbleW = 70;
var pebbleH = 50;

var bubbleX = 50; // bubble 
var bubbleY = 98; 
var bubbleW = 50;
var bubbleH = 45; 

var seaX = 50;
var seaY = 50;
var seaW = 50; 
var seaH = 50;

var speed = 5;

var x2 = 50;
var w2 = 50; 



draw = function() {
 
background(89, 216, 255);

fill(94, 207, 242);
noStroke();
fill(81, 173, 196); // sea bed 
rect(-42,354,500,500);

var fish = function(centerX, centerY, bodyLength, bodyHeight, fcolor, tailWidth, tailHeight, fins){
    strokeWeight(0.2);
    stroke(0, 0, 0);
    fill(fcolor);
    // body
    ellipse(centerX, centerY, bodyLength, bodyHeight);
    // tail
    triangle(centerX-bodyLength/2, centerY,
             centerX-bodyLength/2-tailWidth, centerY-tailHeight,
             centerX-bodyLength/2-tailWidth, centerY+tailHeight);
// fins

    // eye
    fill(33, 33, 33);
    ellipse(centerX+bodyLength/4, centerY, bodyHeight/5, bodyHeight/5);
    noStroke();
    fill(fcolor);
    // fins
    triangle(centerX-bodyLength/6 - finWidth/3, centerY+12, 
             centerX-bodyLength/finWidth, centerY +finHeight+4, 
             centerX-bodyLength/3-tailWidth/2, centerY+finHeight+30);
             
    triangle( centerX-bodyLength/26 - finWidth/3, centerY+53, 
             centerX-bodyLength/-2 - finWidth/1, centerY +finHeight+-30, 
             centerX-bodyLength/7-tailWidth/4, centerY+finHeight+-28);
             
    //head fin
 
    triangle(centerX-bodyLength/1+3*finWidth, centerY+-17, 
             centerX-bodyLength/26+finWidth, centerY +-20, 
             centerX-bodyLength/23-tailWidth, centerY+-55);
    };
    
var rock = function(pebbleX, pebbleY, pebbleW, pebbleH){
    fill(194, 194, 194);
    ellipse(pebbleX,pebbleY,pebbleW,pebbleH); 
    
    fill(235, 235, 235);
    ellipse(pebbleX+0,pebbleY+-7,pebbleW+-8,pebbleH+-15);
    
    fill(247, 247, 247);
    ellipse(pebbleX+-1,pebbleY+-16,pebbleW+-125,pebbleH+-33);
};

var bubble = function(bubbleX,bubbleY,bubbleW,bubbleH){
    fill(143, 208, 255);
    ellipse(bubbleX,bubbleY+2,bubbleW+5,bubbleH+10); 
    
    fill(107, 169, 214);
    ellipse(bubbleX, bubbleY+3, bubbleW,bubbleH-5);
    
    fill(184, 225, 255); // 
    ellipse(bubbleX,bubbleY,bubbleW,bubbleH);

    fill(255, 255, 255);
    ellipse(bubbleX+7,bubbleY-4,bubbleW-30,bubbleH-25);
    
    
    ellipse(bubbleX+-7,bubbleY+13, bubbleW+-44, bubbleH+-43);
    







}; 

var seaweed = function(seaX, seaY, seaW, seaH){
    strokeWeight(7);
    stroke(86, 191, 0);
    line(seaX+148,seaY+381,seaX+153,seaY+221);
    noStroke();
    fill(102, 227, 0);
    ellipse(seaX+130,seaY+242, seaW+-9,seaH+-30);
    ellipse(seaX+174,seaY+230, seaW+-9,seaH+-30);
    ellipse(seaX+141,seaY+280, seaW+-32,seaH+-39);
    ellipse(seaX+167,seaY+270, seaW+-22,seaH+-38);
    ellipse(seaX+163,seaY+297, seaW+-31,seaH+-39);
    ellipse(seaX+141,seaY+222, seaW+-21,seaH+-40);
    ellipse(seaX+165,seaY+315, seaW+-27,seaH+-46);
    ellipse(seaX+131,seaY+264, seaW+-9,seaH+-37);
    ellipse(seaX+135,seaY+310, seaW+-21,seaH+-37);
    ellipse(seaX+169,seaY+255, seaW+-9,seaH+-37);
    
};



seaweed(seaX, seaY, seaW, seaH);
seaweed(seaX+-193, seaY+0, seaW+0, seaH+0);
seaweed(seaX+-33, seaY+69, seaW+0, seaH+0);
seaweed(seaX+146, seaY+-21, seaW+0, seaH+0);
seaweed(seaX+117, seaY+35, seaW+0, seaH+0);

rock(85,384,81,66);
rock(146,383, 78, 50);
rock(97,363, 78, 50);
rock(276,372,81,66); 
rock(25,399,81,66);
rock(381,376,81,48);
rock(228,389,81,42);

bubble(332,bubbleY+350,50,50); 
bubble(364,bubbleY+450,35,33);
bubble(321,bubbleY+176,7,7);
bubble(297,bubbleY+800,7,7);
bubble(342,bubbleY+200,7,7);

bubble(51,bubbleY+700,50,50); 
bubble(121,bubbleY+399,35,33);
bubble(213,bubbleY+400,7,7);
bubble(32,bubbleY+176,7,7);
bubble(97,bubbleY+155,7,7);

bubble(332,bubbleY+506,50,50); 
bubble(364,bubbleY+580,35,33);
bubble(321,bubbleY+318,7,7);
bubble(297,bubbleY+967,7,7);
bubble(342,bubbleY+355,7,7);

bubble(51,bubbleY+892,50,50); 
bubble(121,bubbleY+592,35,33);
bubble(213,bubbleY+591,7,7);
bubble(32,bubbleY+357,7,7);
bubble(97,bubbleY+298,7,7);


bubble(332,bubbleY+712,50,50); 
bubble(364,bubbleY+681,35,33);
bubble(321,bubbleY+510,7,7);
bubble(297,bubbleY+1157,7,7);
bubble(342,bubbleY+526,7,7);

bubble(51,bubbleY+1005,50,50); 
bubble(121,bubbleY+726,35,33);
bubble(213,bubbleY+874,7,7);
bubble(32,bubbleY+661,7,7);
bubble(97,bubbleY+612,7,7);



fish(centerX-50,50,bodyLength,55, color(204, 84, 84), tailWidth*1.2, tailHeight) ;
fish(centerX-299, 333, bodyLength, 50, color(0, 66, 171), tailWidth*0.5, tailHeight); 
fish(centerX+360, 193, bodyLength, 50, color(0, 140, 114),  tailWidth*1.4,tailHeight); 


// tail 
if (centerX>700){
    tailWidth = tailWidth * -1;
    
}
if (centerX<-300){
    tailWidth = tailWidth*-1;}

if (centerX>700){
    finWidth = finWidth * -1;
    
}
if (centerX<-300){
    finWidth = finWidth*-1;}
    
    
    
//fish 
if(centerX>700){
    speed=-5;
    bodyLength= bodyLength *-1;
}
if(centerX<-300){
    speed = 5;
    bodyLength = bodyLength *-1;
}
    

centerX = centerX +speed;

bubbleY = bubbleY - 3; 


};
