size(500, 500);
background(#B7740F);
stroke(0);

int boardSize=9;
int goMargin = 50;
int firstPoint = goMargin;

int prefLastPoint = width - goMargin;

int goPixels = (int) ((prefLastPoint-firstPoint) / (boardSize-1));
int stoneRadius = goPixels - 1;

int coord2pixel(x) {
    return firstPoint + (x-1) * goPixels;
}

int lastPoint = coord2pixel(boardSize);

void drawBoard() {
    for (int i=1;i<=boardSize;i++) {
        int pix = coord2pixel(i);
        line(firstPoint, pix, lastPoint, pix); 
        line(pix, firstPoint, pix, lastPoint); 
    }
}
 
void drawStone(x, y) {
    ellipse(coord2pixel(x), coord2pixel(y), stoneRadius, stoneRadius); 
}

void addBlack(x, y) {
    fill(0);
    drawStone(x, y);
}

void addWhite(x, y) {
    fill(255);
    drawStone(x, y);
}

drawBoard();
addBlack(3, 3);
addBlack(7, 6);    
addWhite(7, 3);
addWhite(4, 7);
