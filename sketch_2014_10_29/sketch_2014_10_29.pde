int ballcount=50;
float [] x = new float [ballcount];
float [] y = new float [ballcount];
float [] vx = new float [ballcount];
float [] vy = new float [ballcount];
float [] vd = new float [ballcount];
float [] sz = new float [ballcount];
color [] c = new color [ballcount];
color cb = color(random(255), random(255), random(255));

void setup() {
  size(500, 500);
  for (int i=0;i<ballcount;i++) {
    x[i]=random(0, width);
    y[i]=random(0, height);
    vx[i]=random(-10, 10);
    vy[i]=random(-10, 10);
    sz[i]=random(0, 100);
    vd[i]=1;
    c[i]=color(random(255), random(255), random(255), 75);
  }
}

void draw() {
  background(cb);
  for (int i=0; i<ballcount; i++) {
    fill(c[i]);
    rectMode(CENTER);
    ellipse(x[i], y[i], sz[i], sz[i]);
    rect(x[i], y[i], sz[i]+50, sz[i]+50);
    x[i]+=vx[i];
    y[i]+=vy[i];
    sz[i]+=vd[i];
    if (sz[i]>=100) {
      vd[i]=-abs(vd[i]);
    }
    if (sz[i]<=0) {
      vd[i]=abs(vd[i]);
    }
    if (x[i]+sz[i]/2>width || x[i]-sz[i]/2<0) {
      vx[i]*=-1;
    }
    if (y[i]+sz[i]/2>width || y[i]-sz[i]/2<0) {
      vy[i]*=-1;
    }
  }
}

