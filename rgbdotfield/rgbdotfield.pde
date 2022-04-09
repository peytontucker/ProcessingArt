size(1000,1000);
blendMode(ADD);

color bgColor = color(0, 0, 0);
background(bgColor);

int offset = 16;

for (int i = 0; i < width/offset; i++) {
  float xpos = offset*i*1.2;
  for (int k = 0; k < height/offset; k++) {
    float ypos = offset*k*1.2;
    
    int xSkew = abs(offset/2-(i%offset));
    int ySkew = abs(offset/2-(k%offset));
    int size = xSkew + ySkew + 1;
    
    
    float col = random(255);
    float dist = random(3)+1;
    
    fill(col, 0, 0);
    circle(xpos, ypos, size);
    fill(0, col, 0);
    circle(xpos+dist, ypos+dist, size);
    fill(0, 0, col);
    circle(xpos+dist*2, ypos+dist*2, size);
  }
}
