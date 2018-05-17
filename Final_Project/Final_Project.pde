import processing.sound.*;
SoundFile BNC;
SoundFile PIU;
PFont BTN;
PFont NS;
PImage HJ;
PImage HB;
PImage JG;
PImage CF;
PImage Blue;
PImage Red;
PImage Green;
int poisoned = 0;
boolean isgameOver = false;
boolean isAlive = false;
PFont Poison;
PFont F;
int Survive = 0;
int Screen = 0;

boolean isGameRunning = false;


void setup()
{
  fullScreen();
  logistics();
}

void logistics()
{
  BTN = createFont("BTN.TTF", 32);
  NS = createFont("NotoSans-Bold.ttf", 32);
  textAlign(CENTER);
  rectMode(CENTER);
  HJ = loadImage("huncho jack.jpg");
  HJ.resize(200, 200);
  HB = loadImage("Home+Button.png");
  HB.resize(75, 75);
  JG = loadImage("JG.jpg");
  JG.resize(401, 151);
  CF = loadImage("conical-flasks-25770810.jpg");
  CF.resize(401, 151);

  Poison = createFont("Exquisite Corpse.ttf", 100);
  Red = loadImage("Red.png");
  Red.resize(200, 250);
  Blue = loadImage("Blue .png");
  Blue.resize(200, 250);
  Green = loadImage("Green.png");
  Green.resize(200, 250);
  poisoned = (int)random(1, 4);


  imageMode(CENTER);
  BNC = new SoundFile(this, "HUNCHO JACK Travis Scott Quavo - Black  Chinese (Audio).mp3");
    PIU = new SoundFile(this, "star.mp3");

}

void draw()
{

  if (Screen == 1)
  {
    gameScreen();
  }
  if (Screen == 2)
  {
    musicScreen();
  }

  if (Screen == 0)
  {
    homeScreen();
  }

  if (Screen == 4)
  {
    if (isGameRunning == true)
    {
      poisonGame();
    }
    
    if (!mousePressed)
  {
    isGameRunning = true;
  }
  }
  
 image(HB, width/2 + 575, height/2 - 325);
 
 if (dist(mouseX, mouseY, width/2 +575, height/2 - 325)< 35)
 {
   tint(250,13,13);
    image(HB, width/2 + 575, height/2 - 325);
       tint(255);

 }
 else
 {
   tint(255);
    image(HB, width/2 + 575, height/2 - 325);
 }

 if (mousePressed)
 {
   if (dist(mouseX, mouseY, width/2 +575, height/2 - 325)< 35)
 {
   Screen = 0;
 }
   
 }
}

void homeScreen()
{
  background(0);
  fill(226);
  textFont(BTN);
  textSize(80);
  text("SHAAN'S ZONE", width/2, height/2 -300); 
  fill(226);
  rect(width/2 - 400, height/2, 400, 400);
  fill(0);
  textSize(80);
  text("MUSIC", width/2 - 400, height/2);
  fill(226);
  rect(width/2 + 400, height/2, 400, 400);
  fill(0);
  textSize(80);
  text("GAMES", width/2 + 400, height/2);
  if (mousePressed)
  {
    if (dist(mouseX, mouseY, width/2 + 400, height/2 ) < 200)
    {
      Screen = 1;
    }

    if (dist(mouseX, mouseY, width/2 - 400, height/2 ) < 200)
    {
      Screen= 2;
    }
  }
}

void gameScreen()
{

  background(226);
  textFont(BTN);
  textSize(60);

  text("CHOOSE YOUR GAME", width/2, height/2 -300);
  rect(width/2, height/2 -100, 410, 160);
  image(JG, width/2, height/2 - 100);
  fill(0);
  textFont(NS);
  textSize(40);
  text("JOHN'S GAME", width/2, height/2 -100);
  rect(width/2, height/2 + 100, 410, 160);
  image(CF, width/2, height/2 +100);
  fill(0);
  textFont(NS);
  textSize(40);
  text("POISON GAME", width/2, height/2 +100);
  if (mousePressed)
  {
    if (dist(mouseX, mouseY, width/2, height/2 + 100)< 205)
    {

      Screen = 4;
    }
  }
}

void poisonGame()
{
  
  background(0);
  textSize(200);
  fill(255);
  textFont(Poison);
  text("Pick Your Poison", width/2, height/2 - 250);
  text("Choose Wisely", width/2, height/2 + 250);
  image(Red, width/2, height/2);
  image(Blue, width/2 +300, height/2);
  image(Green, width/2 -300, height/2);
  textSize(75);
  text(Survive, 228, 100);
  text("Score:", 100, 100);

  if (isgameOver == true)
  { 
    gameOver();
  }

  if (isAlive == true)
  { 
    Congrats();
  }

  if (dist(mouseX, mouseY, width/2, height/2) < 200)
  {
    if (poisoned==2)
    {
      isgameOver = true;
    }
  }
  if (mousePressed)
  {
    if (dist(mouseX, mouseY, width/2+300, height/2) < 200)
    {
      if (poisoned==3)
      {
        isgameOver = true;
      }
    }

    if (dist(mouseX, mouseY, width/2-300, height/2) < 200)
    {
      if (poisoned==1)
      {
        isgameOver = true;
      }
    }
    if (dist(mouseX, mouseY, width/2 + 300, height/2) < 200)
    {
      if (poisoned==2)
      {
        Survive ++ ;
        isAlive = true;
      }
    }
    if (dist(mouseX, mouseY, width/2 - 300, height/2) < 200)
    {
      if (poisoned==2)
      {
        Survive ++ ;
        isAlive = true;
      }
    }
    if (dist(mouseX, mouseY, width/2, height/2) < 200)
    {
      if (poisoned==3)
      {
        Survive ++ ;
        isAlive = true;
      }
    }
    if (dist(mouseX, mouseY, width/2-300, height/2) < 200)
    {
      if (poisoned==3)
      {
        Survive ++ ;
        isAlive = true;
      }
    }
    if (dist(mouseX, mouseY, width/2, height/2) < 200)
    {
      if (poisoned==1)
      {
        Survive ++ ;
        isAlive = true;
      }
    }
    if (dist(mouseX, mouseY, width/2+300, height/2) < 200)
    {
      if (poisoned==1)
      {
        Survive ++ ;
        isAlive = true;
      }
    }
  }
}

void gameOver()
{
  background(255);
  fill(0);
  textSize(100);
  textFont(Poison);
  text("You Died", width/2, height/2);
  textSize(60);
  text(Survive, 100, 100);
}

void Congrats()
{
  poisoned = (int)random(1, 4);

  background(255);
  fill(0);
  textFont(Poison);
  textSize(200);
  text("You Survived", width/2, height/2);
  ellipse(width/2, height/2 + 300, 300, 150);
  fill(255);
  textSize(50);
  text("Continue?", width/2, height/2+300);
  if (mousePressed)
  {
    if (dist(mouseX, mouseY, width/2, height/2+300) < 150)
    {
      isgameOver = false;
      isAlive = false;
    }
  }
}


void musicScreen()
{
  background(226);
  textSize(60);
  text("CLICK TO PLAY AN ALBUM", width/2, height/2 -300);
  image(HJ, width/2, height/2 - 150);
  
  image(HJ, width/2, height/2 + 100);

  if (mousePressed)
  {
    if (dist(mouseX, mouseY, width/2, height/2 -150)< 100);
    {
      BNC.play();
    }
  }
  

  
  if (BNC.play == false)
  {
    
  }
}