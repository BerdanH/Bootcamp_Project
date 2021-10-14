String[] image = {
  "1.png", "2.png", "3.png","4.png","5.png"
}; // need to be in data folder you can create this folder manually or add it by going to sketch on the processing tab and clicking add file
String[] imageCopy = {
  "1c.png", "2c.png", "3c.png", "4c.png","5c.png"
}; // also in the data folder

PImage[] images = new PImage[image.length];
PImage[] copyImages = new PImage[image.length];
int currImage = 0;

boolean showImage;

int startTime;
int passedTime;
int waitTime;


void setup() {
  size(640, 400);
  background (0);

  for (int i=0; i<image.length; i++)
  { 
    images[i] = loadImage(image[i]);
    copyImages[i] = loadImage(imageCopy[i]);
  }

  showImage = false; // images dont show at the start

  startTime = millis(); //gives number of milli seconds
  passedTime = 0;
  waitTime = 5000; // can change so the images can show more quickly
}

void draw() {
  if (!showImage) { // if show image is NOT false show the images starting from first
    image(images[currImage], 0, 0, width, height);//starts off with the first image
  }
  else {
    image(copyImages[currImage], 0, 0, width, height);
  }

  passedTime = millis() - startTime; //calculates if the time limit per image has been reached

  if (passedTime > waitTime) { //displays next image if the time limit has been reached
    currImage++;
    showImage = false;
    startTime = millis();
  }

  if (currImage>image.length-1)
    currImage = 0;
}

void mouseClicked() {
  showImage = true;
}
