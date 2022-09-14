void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  int c=0;
  for(int b=500; b>-10;b-=20){
    if(c==0){
      c=-15;
    }else{
      c=0;
    }
    for(int a=c;a<550;a+=30){
    scale(a,b);
  }
  }
}
void scale(int x, int y) {
  int diam = 0;
float g = 0;
noFill();
while(diam < 30){
  stroke((float)((float)100.0/Math.random()),g,(float)((float)150.0/Math.random()));
  ellipse(x,y,diam,diam+15);
  diam++;
  g+=255/20.0*Math.random();
}
}
