//GOAL: make a 'traffic light' simulator. For now, just have the light 
// changing according to time. You may want to investigate the millis()
// function at processing.org/reference.

int state, lastTimeChange, redLight, yellowLight, greenLight;

void setup() {
  size(600, 600);
  state = 1;
  redLight = 3000;
  yellowLight = 500;
  greenLight = 3000;
  lastTimeChange = millis();
}

void draw() {
  background(255);
  drawOutlineOfLights();
  drawCorrectLight();
  drawCorrectLight();

}

void drawOutlineOfLights() {
  //box
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/2, 75, 200, 10);
}

void drawCorrectLight() {
  if (state == 1){
    drawGreenLight();
  } else if (state == 2) {
    drawYellowLight();
  } else if (state == 3) {
    drawRedLight();
  }
}

void drawGreenLight() {
  fill(0, 255, 0);
  ellipse(width/2, height/2 + 65, 50, 50); //bottom
}

void drawYellowLight() {
  fill(255, 255, 0);
  ellipse(width/2, height/2, 50, 50);
}

void drawRedLight() {
  fill(255, 0, 0);
  ellipse(width/2, height/2 + 65, 50, 50);
}