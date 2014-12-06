class Audio {
  //load music files under assigned methods
  Minim minim;
  
  public Audio(Minim minim){
    this.minim = minim;
  }
  
   void audioMusic(){   
   
   sou = minim.loadFile("meow.mp3");
   //sou.loop();
      
   
  }
     void update() {
       audioMusic();
      
    }
}
