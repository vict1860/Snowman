snowman[] snowmans = new snowman[100];



void setup(){
for(int i = 0; i < 100; i++){
snowmans[i] = new snowman (random(width),random(height),random(10,40));  
  
}


size(1200,800);
} // end setup

void draw(){
background(0,0,0);
for(int i = 0; i < 100; i++){
snowmans[i]. display();
snowmans[i]. move();
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


fill(random(0,255));{
ellipse(x,y,size,size);
ellipse(x,y-size/2-size/2*.8,size*.8,size*.8);
ellipse(x,y-size/2-size*.8-size/2*.5,size*.5,size*.5);
}
}
}