//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.

int state, time, maxTime;

void setup() {
  size(600, 600);
  state = 1;
  time++;
  maxTime = 1000;
}

void draw() {
  background(255);
  drawOutlineOfLights();
  drawLights();
  println(millis());
}

void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);

  time = millis();

  if (time > maxTime) { 
    state = 2;
  }
  if (time > maxTime * 2) {
    state = 3;
  }

}

void drawLights() {
  //lights
  fill(255);

  if (state == 1) {
    fill(0, 255, 0);
    ellipse(width/2, height/2 + 65, 50, 50); //bottom
  }
  if (state == 2) {
    fill(255, 255, 0);
    ellipse(width/2, height/2, 50, 50); //middle
  }
  if (state == 3) {
    fill(255, 0, 255);
    fill(255, 0, 0);
    ellipse(width/2, height/2 - 65, 50, 50); //top
    time = 0;
  }
}