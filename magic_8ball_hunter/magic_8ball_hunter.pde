String[] myWords  = {" ","yes","no","maybe","not sure"};
int myWordsindex;
int mode;

void setup(){
  size(800,800); 
  noStroke();
  textAlign(CENTER,CENTER);
  myWordsindex = 0;
  mode=0; 
}

void draw(){
  switch(mode){
    case 0:                                       //Base for 8ball
      background (0,0,400);
      stroke(0);
      fill(0);
      ellipse(400,400,600,600);
    break;
    case 1:                                      //create random word
      background (0,0,400);
      stroke(0);
      fill(0);
      ellipse(400,400,600,600);
      fill(255);
      textSize(72);
      text(myWords [myWordsindex],400,400);
      if(keyPressed && key == 'r'){        //if, is when r is pressed it resets the screen   
         mode = 2;
      }        
    break;
    case 2:                                      //resets the 8ball
      background (0);
      fill(255);
      textSize(30);
      text("Ask another question!",400,200);
    break;
  }
}      

void mouseClicked(){
  myWordsindex = int(random(1,5));
  mode=1;
} 
