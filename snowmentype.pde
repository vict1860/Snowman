snowman[] snowmans = new snowman[5];
float yspeed = 1;
char  c;
float v;
float b;



void setup(){
for(int i = 0; i < 5; i++){
snowmans[i] = new snowman (random(width),random(height),random(20,80));  
v = random(20,width-10);
b = random(20,height-10);
c = (char)int(random(97,122));  
}


size(800,800);

} // end setup

void draw(){
background(0,0,0);
for(int i = 0; i < 5; i++){
snowmans[i]. display();
snowmans[i]. move();

  textSize(48);
  text(c,v,b);
  
  b = b + yspeed;
  text(yspeed,width/2,height-10);
  if(keyPressed){
  if(key == c){
   v = 0;
   b = random(10,width-10);
   v = 0;
   c = (char)int(random(97,122)); 
   yspeed = yspeed + 1;
 
  }
  }
  if(b>height){
  v = 0;
  b = random(10,width-10);
  v = 0;
  c = (char)int(random(97,122)); 
  yspeed = yspeed + 1;
  }
}

//snowman(mouseX,mouseY,80);


}//end of draw

class snowman{
float x;
float y;
float size; 

snowman(float xin, float yin, float sizein){
y=yin;
x=xin;
size=sizein;
}


void move(){
  
  
}

void display(){



ellipse(x,y,size,size);{
ellipse(x,y-size/2-size/2*.8,size*.8,size*.8);
ellipse(x,y-size/2-size*.8-size/2*.5,size*.5,size*.5);
fill(#FF0000);

}
}
}