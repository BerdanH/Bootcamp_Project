class Particle // new class called particle
{
  float xPos, yPos; //positions of each particle
  float prevxPos, prevyPos; //previous positions of each particle
  float direction; //direction which the particle will move
  
  Particle() //Constructor
  {
    xPos = random(0,width);
    yPos = random(0,height);
    prevxPos = xPos;
    prevyPos = yPos;
    direction = random(0, radians(360));
  }
  
  void moveParticle(){
    if (xPos < 0 || yPos < 0 || xPos > width || yPos > width){
      xPos = random(0 , width);
      yPos = random(0, height);
      prevxPos = xPos;
      prevyPos = yPos;
      direction = random(0, radians(360));
    }
    else{
      prevxPos = xPos;
      prevyPos = yPos;
      
      float noiseScale = 0.01;
      direction = noise(noiseScale*xPos, noiseScale*yPos)*radians(360);
 
    
      xPos = xPos + cos(direction);
      yPos = yPos + sin(direction);
    }
  }
}
      
    
  
