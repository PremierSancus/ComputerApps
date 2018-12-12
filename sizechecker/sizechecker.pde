Boolean landscape = false, portrait = false, square = false, dlandscape = false, dportrait = false, dsquare = false;
void setup() {
  size(1920,1080);
  println("monitor Dimensions[ width:", displayWidth, " height:", displayHeight," ]");
  if (width > displayWidth || height > displayHeight) {
    println("size to big for the monitor. \nChange size() dimensions.\nprogram closes automatically");
    exit();
  }
  if (width/height == 1){square = true;}
  if (width/height > 1){landscape = true;}
  if (width/height < 1){portrait = true;}
  
  if (width/height == 1){dsquare = true;}
  if (width/height > 1){dlandscape = true;}
  if (width/height < 1){dportrait = true;}
  
  if (dsquare != square || dportrait != portrait || dlandscape != landscape){exit();}
}

void draw(){
  
}
