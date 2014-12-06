 class Sprites {
   
  // declare variables
  PImage[] images;
  int imageCount;
  int frame;
  
  Sprites(String imagePrefix, int count) {
    imageCount = count;
    images = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      // load image file and type
      String filename = imagePrefix + nf(i, 2) + ".png";
      images[i] = loadImage(filename);
    }
  }

  void display(float Expos, float ypos) {
    // display image and frame rate
    frame = (frame+1) % imageCount;    
    image(images[frame], Expos, ypos); 
  }
  
  int getWidth() { // gets sprite's width
    return images[0].width;
  }
  
   int getHeight() { // gets sprite's height
    return images[0].height;
   }
  
}
