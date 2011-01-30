//import processing.pdf.*;

int size   = 9;
int pixels = 30;
int first  = 100;
int radius = pixels;

int coord2pixel(int x) {
    return first + (x-1)*pixels;
}

int last = coord2pixel(size);

void board() {
    for (int i=1;i<=size;i++) {
        int pix = coord2pixel(i);
        line(first, pix, last, pix); 
        line(pix, first, pix, last); 
        
    }
}

void stone(int x, int y) {
    ellipse(coord2pixel(x), coord2pixel(y), radius, radius); 
}

void black() {
  fill(0);
}

void white() {
  fill(255);
}

void setup() {
    size(500, 500);
//    beginRecord(PDF, "go.pdf");
    background(255);
    stroke(0);
    board();
    black();
    stone(3, 3);
    stone(4, 4);    
    white();
    stone(3, 4);
    stone(4, 3);
//    endRecord();
}


//void draw() {
//}

// void mousePressed() {
    
// }