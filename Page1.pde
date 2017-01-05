void drawPage1(){
  //getPeopleData1();
  //getPieChartData1();
  
  //pieChartMode();
  
  //textFont(font1);
  textSize(28);
  fill(#669933);
  text("Total",240,300);
  
  textSize(28);
  fill(#669933);
  text("Each",683,300);
  
  textSize(28);
  fill(#669933);
  text("The Best---Timo",380,587);
  
  image(img2,100,50,698/2,417/2);
  image(img3,550,50,417/2*58/37,417/2);
  image(img4,325,340,45*417/56,417/2);
  
  if (mouseX > 100 && mouseX < 100+698/2 && mouseY >50 && mouseY < 50+417/2){
   noFill();
   stroke(#669933);
   rect(100,50,698/2,417/2); 
   if (mousePressed) {
     b = 2;
     c = 1;
   }
  }
  
   if (mouseX > 550 && mouseX < 550+417/2*58/37 && mouseY >50 && mouseY < 50+417/2){
   noFill();
   stroke(#669933);
   rect(550,50,417/2*58/37,417/2); 
   if (mousePressed) {
     b = 2;
     c = 2;
   }
   }
   
   if (mouseX > 325 && mouseX < 325+45*417/56 && mouseY >340 && mouseY < 340+417/2){
   noFill();
   stroke(#669933);
   rect(325,340,45*417/56,417/2); 
   if (mousePressed) {
     b = 2;
     c = 3;
   }
   }
  textSize(20);
  fill(#669933);
  text("Click any picture to go ahead",690,605);
}

void judgePage1(){

  
}