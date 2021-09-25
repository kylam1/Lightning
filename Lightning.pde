void setup()
{
  size (1000,1000);
  background(75, 195, 214);
  fill(129,242,0); //color of grass patch
  noStroke();
  rect(0,850,1000,150);
  fill(71,47,1); //color of tree trunk on each side
  strokeWeight(1);
  rect(0,0,100,950);
  rect(900,0,100,950);
  noLoop();
}

void draw()
{
  centerWeb(80-(float)Math.random()*50, 100+(float)Math.random()*50-25);
  centerWeb(80-(float)Math.random()*50, 300+(float)Math.random()*50-25);
  centerWeb(50-(float)Math.random()*50, 550+(float)Math.random()*50-25);
  centerWeb(60-(float)Math.random()*50, 750+(float)Math.random()*50-25);
  centerWeb(950-(float)Math.random()*50, 80+(float)Math.random()*50-25);
  centerWeb(980-(float)Math.random()*50, 230+(float)Math.random()*50-25);
  centerWeb(970-(float)Math.random()*50, 400+(float)Math.random()*50-25);
  centerWeb(960-(float)Math.random()*50, 600+(float)Math.random()*50-25);
  centerWeb(300+(float)Math.random()*30, 900+(float)Math.random()*25);
  centerWeb(780+(float)Math.random()*30, 800+(float)Math.random()*25);
  centerWeb(350+(float)Math.random()*30, 100-(float)Math.random()*25);
  centerWeb(600+(float)Math.random()*30, 100-(float)Math.random()*25);
  ringWeb(100+(float)Math.random()*50-20);
  ringWeb(160+(float)Math.random()*50-20);
  ringWeb(250+(float)Math.random()*50-20);
  ringWeb(320+(float)Math.random()*50-20);
  ringWeb(400+(float)Math.random()*50-20);
}

void centerWeb(float endX, float endY)
{
  strokeWeight(3);
  stroke(255);
  float x = 500; float y = 500; //Starting point
  float changeX = (float)(Math.random()*10); float changeY = (float)(Math.random()*10);
  float slope = Math.abs((x-endX))/Math.abs((y-endY));
  
  if(x<=endX && y<=endY)
  {
    while(x<=endX && y<=endY)
    {
      line(x,y, x+(slope*changeX),y+changeY);
      if(x<=endX)
        x = x+(slope*changeX);
      if(y<=endY)
        y = y+changeY;
      changeX = (float)Math.random()*10; changeY = (float)(Math.random()*10);
    }
  }
  if(x<=endX && y>=endY)
  {
    while(x<=endX && y>=endY)
    {
      line(x,y, x+(slope*changeX),y-changeY);
      if(x<=endX)
        x = x+(slope*changeX);
      if(y>=endY)
        y = y-changeY;
      changeX = (float)Math.random()*10; changeY = (float)(Math.random()*10);
    }
  }
  if(x>=endX && y<=endY)
  {
    while(x>=endX && y<=endY)
    {
      line(x,y, x-(slope*changeX),y+changeY);
      if(x>=endX)
        x = x-(slope*changeX);
      if(y<=endY)
        y = y+changeY;
      changeX = (float)Math.random()*10; changeY = (float)(Math.random()*10);
    }
  }
  if(x>=endX && y>=endY)
  {
    while(x>=endX && y>=endY)
    {
      line(x,y, x-(slope*changeX),y-changeY);
      if(x>=endX)
        x = x-(slope*changeX);
      if(y>=endY)
        y = y-changeY;
      changeX = (float)Math.random()*10; changeY = (float)(Math.random()*10);
    }
  }
}


void ringWeb(float radius)
{
   noFill();
  strokeWeight(3);
  stroke(255);
  float x1 = 500;
  float y1 = 500-radius;
  float x2 = x1 + radius/2 + (float)Math.random()*15-7.5;
  float y2 = y1 + (radius-(radius*sqrt(3))/2) + (float)Math.random()*15-7.5;
  float x3 = x1 + ((radius*sqrt(3))/2) + (float)Math.random()*15-7.5;
  float y3 = 500 - radius/2 + (float)Math.random()*15-7.5;
  float x4 = 500+radius;
  float y4 = 500;
  beginShape();
  curveVertex(x1,y1);
  curveVertex(x1,y1);
  curveVertex(x2,y2);
  curveVertex(x3,y3);
  curveVertex(x4,y4);
  curveVertex(x4,y4);
  endShape();
  float x5 = x4 - (radius-(radius*sqrt(3)/2)) + (float)Math.random()*15-7.5;
  float y5 = y4 + radius/2 + (float)Math.random()*15-7.5;
  float x6 = x4 - radius/2 + (float)Math.random()*15-7.5;
  float y6 = y4 + (radius*sqrt(3)/2) + (float)Math.random()*15-7.5;
  float x7 = 500;
  float y7 = 500+radius;
  beginShape();
  curveVertex(x4,y4);
  curveVertex(x4,y4);
  curveVertex(x5,y5);
  curveVertex(x6,y6);
  curveVertex(x7,y7);
  curveVertex(x7,y7);
  endShape();
  float x8 = x7 - radius/2 + (float)Math.random()*15-7.5;
  float y8 = y7 - (radius-(radius*sqrt(3)/2)) + (float)Math.random()*15-7.5;
  float x9 = x7 - (radius*sqrt(3)/2) + (float)Math.random()*15-7.5;
  float y9 = y7 - radius/2 + (float)Math.random()*15-7.5;
  float x10 = 500-radius;
  float y10 = 500;
  beginShape();
  curveVertex(x7,y7);
  curveVertex(x7,y7);
  curveVertex(x8,y8);
  curveVertex(x9,y9);
  curveVertex(x10,y10);
  curveVertex(x10,y10);
  endShape();
  float x11 = x10 + (radius-(radius*sqrt(3)/2)) + (float)Math.random()*15-7.5;
  float y11 = y10 - radius/2 + (float)Math.random()*15-7.5;
  float x12 = x10 + radius/2 + (float)Math.random()*15-7.5;
  float y12 = y10 - (radius*sqrt(3)/2) + (float)Math.random()*15-7.5;
  beginShape();
  curveVertex(x10,y10);
  curveVertex(x10,y10);
  curveVertex(x11,y11);
  curveVertex(x12,y12);
  curveVertex(x1,y1);
  curveVertex(x1,y1);
  endShape();  
}
