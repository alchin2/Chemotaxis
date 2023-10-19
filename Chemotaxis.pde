cell[]objects = new cell[24];
void setup() {
  size(800, 800);
  background(0);
  for ( int i = 0; i < objects.length; i++)
  {
    objects[i] = new cell();
  }

}

void draw() {
  background(0);
  noStroke();
  for ( int i = 0; i < objects.length; i++)
  {
    objects[i].move();
    objects[i].show();
  }
  
   for (int i = 0; i < objects.length; i++) {
    for (int j = 0; j < objects.length; j++) {
    if (dist(objects[i].x,objects[i].y,objects[j].x,objects[j].y)<40)
    {
      if (objects[i].rps==1 && objects[j].rps==2){
        objects[i].alive = false;
      }
      else if (objects[i].rps==1 && objects[j].rps==3){
        objects[j].alive = false;
      }
       else if (objects[i].rps==2 && objects[j].rps==3){
         objects[i].alive = false;
      }
      }
    }
  }

}

void mousePressed() {
  if (mousePressed) {
      for (int i = 0; i < objects.length; i++) {
    objects[i] = new cell();
  }
    background(0);

  }
}
class cell {
  int x, y, rps;
  boolean alive;
  cell() {
    x = (int)(Math.random()*600+100);
    y = (int)(Math.random()*600+100);
    rps = (int)(Math.random()*3+1);
    alive = true;
  }
  void move() {
    if (mousePressed) {
        if (x>800)
    {
     x = x + (int)(Math.random()*7)-7;
    }
    else{
       x = x + (int)(Math.random()*7)-3;
    }
    if (y>800){
      y=y+(int)(Math.random()*7)-7;
    }
    else
    {
       y = y + (int)(Math.random()*7)-3;
    }
    }
   
   
    if (x>800)
    {
     x = x + (int)(Math.random()*7)-7;
    }
    else{
       x = x + (int)(Math.random()*7)-3;
    }
    if (y>800){
      y=y+(int)(Math.random()*7)-7;
    }
    else
    {
       y = y + (int)(Math.random()*7)-3;
    }
  }
  void show() {
    if (alive == true){
      if (rps == 1){
      fill(210, 180, 140);
      ellipse(x, y, 50, 50);
      fill(0, 0, 0);
      text("Rock", x-15, y);
    }
    else if (rps == 2){
      fill(256, 256, 256);
      ellipse(x, y, 50, 50);
      fill(0, 0, 0);
      text("Paper", x-15, y);
    }
    else if (rps==3){
     fill(70, 71, 62);
      ellipse(x, y, 50, 50);
      fill(0, 0, 0);
      text("Scissor", x-20, y);
    }
    }
   
  }
  
}
