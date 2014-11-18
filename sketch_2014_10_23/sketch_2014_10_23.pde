String[]antagonists= {
  "Amon", "Tarrlok", "Unalaq", "Varrick", "Zaheer", "Hou-ting", "Kuvira"
};
void setup() {
  size(500, 500);
}
void draw() {
  frameRate(10);
  for (int i=0;i<7;i++) {
    text(antagonists[i],0,50+50*i);
    fill(random(255),random(255),random(255),75);
    textSize(25);
  }
}

