cell[]bob = new cell[100];
void setup(){
size(800,800);
background(0);
for ( int i = 0; i < bob.length; i++)
{
       bob[i] = new cell();
}
}

void draw(){
  noStroke();
for ( int i = 0; i < bob.length; i++)
{
       bob[i].move();
       bob[i].show();
}
}

void mousePressed(){
if(mousePressed){
background(0);
}
}
class cell{
int x,y,r,g,b;
cell(){
x = (int)(Math.random()*800);
y = (int)(Math.random()*800);
r = (int)(Math.random()*256);
g = (int)(Math.random()*256);
b = (int)(Math.random()*256);
}
void move(){
if (mousePressed){
x = x + (int)(Math.random()*7)-3;
y = y + (int)(Math.random()*7)-3;
}
x = x + (int)(Math.random()*7)-3;
y = y + (int)(Math.random()*7)-3;
}
void show(){
fill(r,g,b);
ellipse(x,y,5,5);
}

}

