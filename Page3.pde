void drawPage3(){
  noStroke();
  bar1.update();
  bar1.display();
  bar1.displayMonth();
  
  textFont(font1);
  textSize(35);
  fill(#336633);
  text("交大各咖啡厅12月销售对比",300,100);
  
  drawBar(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,date);
  
  if (keyPressed){
    b=1;
    c=0;
  }
  textSize(20);
  fill(#669933);
  text("Press any key to return",720,605);  
  
  stroke(200);
  line(215,150,215,450);
  
  stroke(200);
  line(215,450,800,450); 
  
  textSize(24);
  fill(#336633);
  text("甜魔",275,480);
  
  textSize(24);
  fill(#336633);
  text("时光",475,480);  
  
  textSize(24);
  fill(#336633);
  text("伊诺",675,480);  
  
  line(215,360,205,360);
  line(215,270,205,270);
  line(215,180,205,180);
  
  textSize(20);
  fill(#669933);
  text("100",165,365);
  text("200",165,275);
  text("300",165,185);
  
  noStroke();
  fill(#99CC99);
  rect(800,200,30,14);
  
  noStroke();
  fill(#669933);
  rect(800,240,30,14);
  
  noStroke();
  fill(#336633);
  rect(800,280,30,14); 
  
  noStroke();
  fill(#CCFFCC);
  rect(800,320,30,14);
  
  fill(50);
  textSize(22);
  text("上午",840,214);
  text("下午",840,254);
  text("晚上",840,294);
  text("总和",840,334);
}

void drawBar(float[] p1,float[] p2, float[] p3, float[] p4, float[] p5, float[] p6, float[] p7, float[] p8, float[] p9, float[] p10, float[] p11, float[] p12, int date){ 
    noStroke();   
    fill(#CCFFCC);
    rect(250 + 150 * 0, 450-p10[date], 99, p10[date]);
    
    fill(#99CC99);
    rect(250 + 150 * 0, 450-p2[date], 33, p2[date]);
    
    fill(#669933);
    rect(250 +33 + 150 * 0, 450-p3[date], 33, p3[date]);
    
    fill(#336633);
    rect(250 + 66 + 150 * 0, 450-p1[date], 33, p1[date]);
    
    
    noStroke(); 
    fill(#CCFFCC);
    rect(300 + 150 * 1, 450-p11[date], 99, p11[date]);
    
    fill(#99CC99);
    rect(300 + 150 * 1, 450-p5[date], 33, p5[date]);
    
    fill(#669933); 
    rect(300 +33 + 150 * 1, 450-p6[date], 33, p6[date]);
    
    fill(#336633);
    rect(300 + 66 + 150 * 1, 450-p4[date], 33, p4[date]);
    
    
    noStroke();
    fill(#CCFFCC);  
    rect(350 + 150 * 2, 450-p12[date], 99, p12[date]);
    
    fill(#99CC99);
    rect(350 + 150 * 2, 450-p8[date], 33, p8[date]);
    
    fill(#669933);
    rect(350 +33 + 150 * 2, 450-p9[date], 33, p9[date]);
    
    fill(#336633);
    rect(350 + 66 + 150 * 2, 450-p6[date], 33, p6[date]);
  
}

void judgePage3(){
  if (b==1 && c==0){
    page1();
  }
}