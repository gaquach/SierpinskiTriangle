public void setup()
{
 size(610, 610);
}
public void draw()
{
  background(203,158,252);
  sierpinski(5,5,600);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 7)
  {
    fill(83, 132, 250);
    triangle(x, y, x+len, y, x + (len/2), y-len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y+ (len/2), len/2);
  }
}