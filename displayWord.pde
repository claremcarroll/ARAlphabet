void displayWord(){
        pushMatrix();
        textAlign(CENTER);
        translate(10,0,110);
        rotateX(radians(-90));
        rotateY(radians(180));
        textSize(32);
        fill(0);
        text(myWord, 10, 30);
        popMatrix();
}
