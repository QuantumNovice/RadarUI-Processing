
import java.util.ArrayList;
import java.util.List;


float t =0;

void setup(){
  size(400,400);

}




void draw(){
  background(0);
  translate(width/2, height/2);
  int r = 150;
  float x = r*cos(t);
  float y = r*sin(t);
  
  float x1,y1;
  x1=0;
  y1=0;
  noFill();
  strokeWeight(2);
  stroke(0, 247, 42);
  circle(0,0, 2*r);
  for (float i=1.0;i<1.5;i+=0.01){
    x1 = r*cos(t+i);
    y1 = r*sin(t+i);
    strokeWeight(5);
    stroke(0, 247, 63,20*i);
    line(0,0, x1,y1);
    
  }
  t+=.05;
  stroke(0, 247, 63);
  
  if (t%10==0){
    float y2 = y1+random((y-y1)/2);
    float x2 = x1+random((x-x1)/2);
    point(x2, y2);
  }

  
  
  text("Detections", -width/2,-height/2+10);
  
}
