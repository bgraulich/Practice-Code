void setup() {
  size(500,500);
}
int[]x= {
  237,156,297,181,303
};
int[]y= {
  492,89,140,334,254
};
int[]sz= {
  42,87,35,26,52
};
int[]vx= {
  -2,1,6,-3,-4
};
int[]vy= {
  4,3,-1,1,5
};
void draw() {
  for(int i=0;i<x.length;i++) {
    ellipse(x[i],y[i],sz[i],sz[i]);
    x[i]=vx[i];
    y[i]=vy[i];
    if(x[i]+sz[i]/2>width || x[i]-sz[i]/2<0) {
      vx[i]*=-1;
    }
    if(y[i]+sz[i]/2>width || y[i]-sz[i]/2<0) {
      vy[i]*=-1;
    }
  }
}
