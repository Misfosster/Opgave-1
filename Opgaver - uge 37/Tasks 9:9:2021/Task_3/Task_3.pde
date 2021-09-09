//Trafiklysets+baggrundens farver
  color rLight = color(255,0,0);
  color bLight = color(0,0,255);
  color gLight = color(0,255,0);
  color grey = color (150);

//Default trafiklys
void setup() 
{
  size(800, 800);
  stroke(0);
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);
  fill(0);
  rect(width/2, height/2, 250, 650);
  fill(grey);
  ellipse(width/2, height/2-200, 175, 175);
  ellipse(width/2, height/2, 175, 175);
  ellipse(width/2, height/2+200, 175, 175);
}

//Timer på rødt lys.
int i = 1;
void draw()
{
  frameRate(10);

  if(i >= 25)
  {
    fill(rLight);
    ellipse(width/2, height/2-200, 175, 175); 
    fill(grey);
    ellipse(width/2, height/2+200, 175, 175);
  }
  
//Timer på grønt lys.
  else
  {
    fill(gLight);
    ellipse(width/2, height/2+200, 175, 175);
    fill(grey);
    ellipse(width/2, height/2-200, 175, 175);
  }
  i++;
  
  //Reset af timer.
  if(i == 50)
  {
    i = 1;
  }
}
