Particle[] particles ; //creating new arrays
Particle[] particles1;

void setup()
{
  size(800, 800);
  particles = new Particle[500]; //initalise how many values the array should hold
  for (int i=0; i<particles.length; i++)
  {
    particles[i] = new Particle();
  }
  particles1 = new Particle[500]; //initalise how many values the array should hold
  for (int j=0; j<particles1.length; j++)
  {
    particles1[j] = new Particle();
  }
  background(255, 255, 255);
}

void draw()
{
  strokeWeight(random(0, 1));
  for (Particle p : particles)
  {
    stroke(0, 0, 0);
    line(p.prevxPos, p.prevyPos, p.xPos, p.yPos);
    p.moveParticle();
  }
  for (Particle p : particles1)
  {
    stroke(0, 0, 0);
    line(p.prevxPos, p.prevyPos, p.xPos, p.yPos);
    p.moveParticle();
  }
}
