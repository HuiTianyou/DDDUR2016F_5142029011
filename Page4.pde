void drawPage4(){

  
  textFont(font1);
  textSize(35);
  fill(#336633);
  text("明星咖啡厅——甜魔咖啡顾客饮食情况",220,100);
  
  if (keyPressed){
    b=1;
    c=0;
  }
  textSize(20);
  fill(#669933);
  text("Press any key to return",720,605);
  
  //drawEllipse();
  
  noStroke();
  fill(#99CC99);
  rect(180,175,100,50);
  arc(180,200,50,50,HALF_PI,PI+HALF_PI);
  arc(280,200,50,50,PI+HALF_PI,TWO_PI+HALF_PI);

  noStroke();
  fill(#99CC99);
  rect(180,275,100,50);
  arc(180,300,50,50,HALF_PI,PI+HALF_PI);
  arc(280,300,50,50,PI+HALF_PI,TWO_PI+HALF_PI);
  
  noStroke();
  fill(#99CC99);
  rect(180,375,100,50);
  arc(180,400,50,50,HALF_PI,PI+HALF_PI);
  arc(280,400,50,50,PI+HALF_PI,TWO_PI+HALF_PI);  
  
  noStroke();
  fill(#99CC99);
  rect(180,475,100,50);
  arc(180,500,50,50,HALF_PI,PI+HALF_PI);
  arc(280,500,50,50,PI+HALF_PI,TWO_PI+HALF_PI);
  
  stroke(150);
  line(350,150,350,550);
  
  textFont(font1);
  fill(#336633);
  textSize(28);
  text("最受欢迎",175,210);
  text("最受欢迎",175,210);
  text("排名第二",175,310);
  text("排名第二",175,310);
  text("名列三甲",175,410);
  text("名列三甲",175,410);
  text("无冕之王",175,510);
  text("无冕之王",175,510);
  
  if( mouseX>160 && mouseX<300 && mouseY>175 &&mouseY<225){
     noStroke();
     fill(#336633);
     rect(180,175,100,50);
     arc(180,200,50,50,HALF_PI,PI+HALF_PI);
     arc(280,200,50,50,PI+HALF_PI,TWO_PI+HALF_PI);
     textFont(font1);
     fill(#99CC99);
     textSize(28);
     text("一餐",200,210);
     text("一餐",200,210);
     if (mousePressed){
      //noStroke();
      //fill(255);
      //rect(355,150,600,600);
      image(img5,400,190,500,300);
     }
  }
  
    if( mouseX>160 && mouseX<300 && mouseY>275 &&mouseY<325){
     noStroke();
     fill(#336633);
     rect(180,275,100,50);
     arc(180,300,50,50,HALF_PI,PI+HALF_PI);
     arc(280,300,50,50,PI+HALF_PI,TWO_PI+HALF_PI);
     textFont(font1);
     fill(#99CC99);
     textSize(28);
     text("哈乐餐厅",175,310);
     text("哈乐餐厅",175,310);
     if (mousePressed){
      //noStroke();
      //fill(255);
      //rect(355,150,600,600);
      image(img6,400,190,500,300); 
     }
  }
  
     if( mouseX>160 && mouseX<300 && mouseY>375 &&mouseY<425){
     noStroke();
     fill(#336633);
     rect(180,375,100,50);
     arc(180,400,50,50,HALF_PI,PI+HALF_PI);
     arc(280,400,50,50,PI+HALF_PI,TWO_PI+HALF_PI);
     textFont(font1);
     fill(#99CC99);
     textSize(28);
     text("二餐",200,410);
     text("二餐",200,410);
     if (mousePressed){
      //noStroke();
      //fill(255);
      //rect(355,150,600,600);
      image(img7,400,190,500,300);
     }
  } 
  
     if( mouseX>160 && mouseX<300 && mouseY>475 &&mouseY<525){
     noStroke();
     fill(#336633);
     rect(180,475,100,50);
     arc(180,500,50,50,HALF_PI,PI+HALF_PI);
     arc(280,500,50,50,PI+HALF_PI,TWO_PI+HALF_PI);
     textFont(font1);
     fill(#99CC99);
     textSize(28);
     text("四餐",200,510);
     text("四餐",200,510);
     if (mousePressed){
      //noStroke();
      //fill(255);
      //rect(355,150,600,600);
      image(img8,400,190,500,300);     
     
     }
  }   
}



void judgePage4(){
  if (b==1 && c==0){
    page1();
  }
}