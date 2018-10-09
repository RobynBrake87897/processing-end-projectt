// int for rainbow cloud to go back and forth across screen (or slow down/ stop)
int circleX = 0;
int speed = 5;

// int to make cloud behind sun move right
int cloudMove = 0;
int cloudMove2 = 300;
int cloudMove3 = 700;

// boolean to make stars appear if night time = true and keypressed = 's'
boolean stars = false;

// int to make clouds infront of sun move left
int cloudMove4 = 500;
int cloudMove5 = 900;
int cloudMove6 = 300;

// int to change window fill if lights are "on" or "off" to = 90 0r #eee8aa
int windowColour = 50;

// boolean for nightime to be true if night time button clicked
boolean nightTime = false;

// boolean for day time to be true if day time button clicked
boolean dayTime = false;

// boolean for reset buttom
boolean reSet = false;

// pimage for moon
PImage moonImage;

// pimage for sun
PImage sunImage;

//pimage for star
PImage starImage;

void setup()
{
  // load star image
  starImage = loadImage("star.jpg");

  // set size
  size(1000, 1000);

  // set beguinning background
  background(127);
}

void draw()
{
  //if daytime button = clicked
  if (dayTime == true)
  { 
    // colour sky for daytime if daytime = true
    background(100, 155, 255);

    // draw cloud behind sun 1
    fill(255);
    stroke(110);
    ellipse(cloudMove, 100, 100, 70);

    // make behind clouds move right
    cloudMove = cloudMove +1;
    cloudMove2 = cloudMove2 + 1;
    cloudMove3 = cloudMove3 + 1;

    // draw cloud behind sun 2
    fill(255);
    stroke(110);
    ellipse(cloudMove2, 300, 80, 60);

    // draw cloud behind sun 3
    fill(255);
    stroke(110);
    ellipse(cloudMove3, 60, 120, 50);

    // import sun if daytime = true
    sunImage = loadImage("sun.jpg");
    imageMode(CENTER);
    image (sunImage, 500, 100, 250, 200);

    // rainbow clouds speed
    circleX = circleX + speed;

    // make rainbow cloud change direction if circleX > width
    if (circleX > width || circleX < 0)
    {
      speed = speed * - 1;
    }

    // display the rainbow cloud at x location
    stroke(0);
    fill(random(256), random(256), random(256));
    ellipse(circleX, 100, 120, 50);

    // draw cloud 4 infront of sun
    fill(255);
    stroke(110);
    ellipse(cloudMove4, 500, 100, 70);

    // draw cloud 5 infront of sun
    fill(255);
    stroke(110);
    ellipse(cloudMove5, 150, 140, 60);

    // draw cloud 6 infront of sun
    fill(255);
    stroke(110);
    ellipse(cloudMove6, 300, 90, 50);

    // make clouds infront of sun move left
    cloudMove4 = cloudMove4 - 1;
    cloudMove5 = cloudMove5 - 1;
    cloudMove6 = cloudMove6 - 1;

    // draw road day time
    stroke(0);
    fill(120);
    rectMode(CORNER);
    rect(0, 750, 1000, 250);

    // draw building #1
    stroke(0);
    fill(100);
    rectMode(CENTER);
    rect(200, 450, 200, 600);

    // draw bulding #2
    stroke(0);
    fill(100);
    rectMode(CENTER);
    rect(400, 550, 200, 400);

    // draw bulding #3
    stroke(0);
    fill(100);
    rectMode(CENTER);
    rect(700, 500, 200, 500);

    // draw bulding #4
    stroke(0);
    fill(100);
    rectMode(CENTER);
    rect(950, 400, 200, 700);

    // draw building #5
    stroke(0);
    fill(100);
    rectMode(CENTER);
    rect(-20, 500, 200, 500);

    //draw window #1 on building #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(150, 200, 50, 50);

    // draw window #2 on building #1 
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(250, 200, 50, 50);

    // draw window #3 one bulding #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(150, 300, 50, 50);

    // draw window #4 on bulding #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(250, 300, 50, 50);

    // draw window #5 on building #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(150, 400, 50, 50);

    // draw window #6 on building #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(250, 400, 50, 50);

    // draw window #7 on building #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(150, 500, 50, 50);

    // draw window #8 on building #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(250, 500, 50, 50);

    // draw window #9 on building #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(150, 600, 50, 50);  

    // draw window #10 on building #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(250, 600, 50, 50);

    // draw window #11 on building #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(150, 700, 50, 50);

    // draw window #12 on building #1
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(250, 700, 50, 50);

    // draw window #1 on building #2
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(350, 400, 50, 50);

    // draw window #2 on building #2
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(450, 400, 50, 50);

    // draw window #3 on building #2
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(350, 500, 50, 50);

    // draw window #4 on building #2
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(450, 500, 50, 50);

    // draw window #5 on building #2
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(350, 600, 50, 50);

    // draw window #6 on building #2
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(450, 600, 50, 50);

    // draw window #7 on building #2
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(350, 700, 50, 50);

    // draw window #8 on building #2
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(450, 700, 50, 50);

    // draw window #1 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(650, 300, 50, 50);

    // draw window #2 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(750, 300, 50, 50);

    // draw window #3 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(650, 400, 50, 50);

    // draw window #4 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(750, 400, 50, 50);

    // draw window #5 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(650, 500, 50, 50);

    // draw window #6 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(750, 500, 50, 50);

    // draw window #7 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(650, 600, 50, 50);

    // draw window #8 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(750, 600, 50, 50);

    // draw window #9 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(650, 700, 50, 50);

    // draw window #10 on building #3
    stroke(200);
    fill(200);
    rectMode(CENTER);
    rect(750, 700, 50, 50);

    // draw window #1 on building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(900, 100, 50, 50);

    // draw window #2 building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(1000, 100, 50, 50);

    // draw window #3 building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(900, 200, 50, 50);

    // draw window #4 building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(1000, 200, 50, 50);

    // draw window #5 building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(900, 300, 50, 50);

    // draw window #6 building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(1000, 300, 50, 50);

    // draw window #7 building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(900, 400, 50, 50);

    // draw window #8 building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(1000, 400, 50, 50);

    // draw window #9 building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(900, 500, 50, 50);

    // draw window #10 on building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(1000, 500, 50, 50);

    // draw window #11 on building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(900, 600, 50, 50);

    // draw window #12 on building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(1000, 600, 50, 50);

    // draw window #13 on building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(900, 700, 50, 50);

    // draw window #14 on building #4
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(1000, 700, 50, 50);

    // draw window #1 on building #5
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(30, 300, 50, 50);

    // draw window #2 on building #5
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(30, 400, 50, 50);

    // draw window #3 on building #5
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(30, 500, 50, 50);

    // draw window #4 on building #5
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(30, 600, 50, 50);

    // draw window #5 on building #5
    stroke(127);
    fill(200);
    rectMode(CENTER);
    rect(30, 700, 50, 50);
  }
  // if night time button = clicked
  if (nightTime == true)
  {    
    // draw background for night time if night time = true
    background(0);

    // draw text "go to bed dude..."
    textMode(CENTER);
    textSize(30);
    fill(random(mouseY), random(mouseY), random(mouseY) );
    text("dude, go to bed...", 375, 240);  

    // if stars = true
    if (stars == true)
    {
      // import star sky if press 's' during night time
      imageMode(CORNER);
      image(starImage, 0, 0, 1000, 1000);
    }

    // draw road night time
    stroke(0);
    fill(30);
    rectMode(CORNER);
    rect(0, 750, 1000, 250);  

    // draw building #1
    stroke(0);
    fill(60);
    rectMode(CENTER);
    rect(200, 450, 200, 600);

    // draw bulding #2
    stroke(0);
    fill(60);
    rectMode(CENTER);
    rect(400, 550, 200, 400);

    // draw bulding #3
    stroke(0);
    fill(60);
    rectMode(CENTER);
    rect(700, 500, 200, 500);

    // draw bulding #4
    stroke(0);
    fill(60);
    rectMode(CENTER);
    rect(950, 400, 200, 700);

    // draw building #5
    stroke(0);
    fill(60);
    rectMode(CENTER);
    rect(-20, 500, 200, 500);

    // import full moon if night time = true
    imageMode(CENTER);
    moonImage = loadImage("moon.jpg");
    image(moonImage, 500, 100, 250, 200);

    //draw window #1 on building #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(150, 200, 50, 50);

    // draw window #2 on building #1 
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(250, 200, 50, 50);

    // draw window #3 one bulding #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(150, 300, 50, 50);

    // draw window #4 on bulding #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(250, 300, 50, 50);

    // draw window #5 on building #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(150, 400, 50, 50);

    // draw window #6 on building #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(250, 400, 50, 50);

    // draw window #7 on building #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(150, 500, 50, 50);

    // draw window #8 on building #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(250, 500, 50, 50);

    // draw window #9 on building #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(150, 600, 50, 50);  

    // draw window #10 on building #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(250, 600, 50, 50);

    // draw window #11 on building #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(150, 700, 50, 50);

    // draw window #12 on building #1
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(250, 700, 50, 50);

    // draw window #1 on building #2
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(350, 400, 50, 50);

    // draw window #2 on building #2
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(450, 400, 50, 50);

    // draw window #3 on building #2
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(350, 500, 50, 50);

    // draw window #4 on building #2
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(450, 500, 50, 50);

    // draw window #5 on building #2
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(350, 600, 50, 50);

    // draw window #6 on building #2
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(450, 600, 50, 50);

    // draw window #7 on building #2
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(350, 700, 50, 50);

    // draw window #8 on building #2
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(450, 700, 50, 50);

    // draw window #1 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(650, 300, 50, 50);

    // draw window #2 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(750, 300, 50, 50);

    // draw window #3 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(650, 400, 50, 50);

    // draw window #4 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(750, 400, 50, 50);

    // draw window #5 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(650, 500, 50, 50);

    // draw window #6 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(750, 500, 50, 50);

    // draw window #7 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(650, 600, 50, 50);

    // draw window #8 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(750, 600, 50, 50);

    // draw window #9 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(650, 700, 50, 50);

    // draw window #10 on building #3
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(750, 700, 50, 50);

    // draw window #1 on building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(900, 100, 50, 50);

    // draw window #2 building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(1000, 100, 50, 50);

    // draw window #3 building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(900, 200, 50, 50);

    // draw window #4 building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(1000, 200, 50, 50);

    // draw window #5 building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(900, 300, 50, 50);

    // draw window #6 building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(1000, 300, 50, 50);

    // draw window #7 building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(900, 400, 50, 50);

    // draw window #8 building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(1000, 400, 50, 50);

    // draw window #9 building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(900, 500, 50, 50);

    // draw window #10 on building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(1000, 500, 50, 50);

    // draw window #11 on building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(900, 600, 50, 50);

    // draw window #12 on building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(1000, 600, 50, 50);

    // draw window #13 on building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(900, 700, 50, 50);

    // draw window #14 on building #4
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(1000, 700, 50, 50);

    // draw window #1 on building #5
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(30, 300, 50, 50);

    // draw window #2 on building #5
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(30, 400, 50, 50);

    // draw window #3 on building #5
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(30, 500, 50, 50);

    // draw window #4 on building #5
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(30, 600, 50, 50);

    // draw window #5 on building #5
    stroke(127);
    fill(windowColour);
    rectMode(CENTER);
    rect(30, 700, 50, 50);

    // draw lights on/off button
    stroke(255);
    fill(#ffd700);
    rectMode(CENTER);
    rect(100, 100, 200, 40);

    // draw text "lights on/off" in lights on/off button
    fill(0);
    textSize(25);
    text("lights on/off", 30, 110);
  }

  // draw daytime button
  fill(#fdfd96);
  stroke(255);
  rectMode(CENTER);
  rect(100, 20, 200, 40);

  // draw text "day time" in daytime button
  fill(0);
  textSize(25);
  text("daytime", 30, 25);

  // draw nightime button
  rectMode(CENTER);
  stroke(255);
  fill(#D3D3D3);
  rect(100, 60, 200, 40);

  // draw text "night time" in night time button
  fill(0);
  textSize(25);
  text("night time", 30, 65);
}

void mousePressed()
{
  // change rainbow clouds speed +
  speed = speed + 1;

  // create daytime button if click
  if (mouseX >= 0 && mouseX <= 200 && mouseY >= 0 && mouseY <= 40)
  {
    // make day time true and night time false
    dayTime = true;
    nightTime = false;
  }
  // create night time button if click
  if (mouseX >= 0 && mouseX <= 200 && mouseY >= 40 && mouseY <= 80)
  {
    // make night time true and day time false
    nightTime = true;
    dayTime = false;
  }

  // creat a lights on/off button if click
  if (mouseX >= 0 && mouseX <= 200 && mouseY >= 80 && mouseY <= 120)
  {
    if (windowColour == #eee8aa)
    {
      windowColour = 50;
    } else
    {
      windowColour = #eee8aa;
    }
  }
}
void keyPressed()
{
  if (key == 's' && nightTime == true)
  {
    stars = true;
  }
}
/**1)  My four (or more) text, images, and/or shapes are:
 i have a sun image, moon image, and star image, aswell as all the shapes that make up the scenary
 
 2)  My one (or more) self-taught animation is/are (PLEASE INCLUDE LINKS):
 makubg the raindbow cloud go across the screen back and forth/ slowdown and stop
 
 3)  My four (or more) animations that were not learned from online tutorials are:
 (during night time) if you click the light on/off button the fill in the windows will change to a yellow, and if clicked again they go back to their origional fill.
 (during daytime) there are regular clouds that move across the screen
 (during night time) the3re is a text that changes colour depending on the mouse location
 (during night time) if you press 's' the background becomes stary
 
 4)  When you press the ____ key, this happens:
 (during night time) if 's' is pressed stars appear
 
 5)  When you click the ____, this happens:
 (during night time) if you click the light on/off button the fill in the windows will change to a yellow, and if clicked again they go back to their origional fill.
 if you press "day time" or "night time" it brings you to the one you pressed
 */
