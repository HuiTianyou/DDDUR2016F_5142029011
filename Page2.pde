void drawPage2(){
  //pieChartMode();
  //peopleChartMode();
  getGender();
  getEducation();
  
  textFont(font1);
  textSize(35);
  fill(#336633);
  text("上海交通大学咖啡馆消费者基本情况",240,100);
  
  float total = coffeebachelor + coffeemaster + coffeephd;
  angles[0] = round(coffeebachelor*360/total) ;
  angles[1] = round(coffeemaster*360/total);
  angles[2] = 360-round(coffeebachelor*360/total)-round(coffeemaster*360/total);
  
  float total2 = coffeemale + coffeefemale;
  angles2[0] = round(coffeemale*360/total2) ;
  angles2[1] = 360-round(coffeemale*360/total2);
  
  EducationChart(230, angles);
  GenderChart(230, angles2);
  
  
 // GenderChart();
 // EducationChart();  

  textSize(20);
  fill(#669933);
  text("Press any key to return",720,605);
  
  noStroke();
  fill(#99CC99);
  ellipse(160,480,15,15);
  
  noStroke();
  fill(#669933);
  ellipse(250,480,15,15);
  
  noStroke();
  fill(#336633);
  ellipse(340,480,15,15);
  
  textFont(font1);
  textSize(20);
  fill(0);
  text("本科", 175 ,487);
  
  textFont(font1);
  textSize(20);
  fill(0);
  text("硕士", 265, 487);
  
  textFont(font1);
  textSize(20);
  fill(0);
  text("博士", 355, 487);
  
  noStroke();
  fill(#99CC99);
  ellipse(640,480,15,15);
  
  noStroke();
  fill(#669933);
  ellipse(755,480,15,15);
  
  textFont(font1);
  textSize(20);
  fill(0);
  text("男生", 655 ,487);
  
  textFont(font1);
  textSize(20);
  fill(0);
  text("女生", 770, 487);  
}



void EducationChart(float diameter, int[] data) {
  float lastAngle = 0;
  for (int i = 0; i < data.length; i++) {
    noStroke();
    fill(pieColor[i]);
    arc(280, 300, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
    lastAngle += radians(angles[i]);
  }
}

void GenderChart(float diameter2, int[] data2) {
  float lastAngle2 = 0;
  for (int i = 0; i < data2.length; i++) {
    noStroke();
    fill(pieColor2[i]);
    arc(720, 300, diameter2, diameter2, lastAngle2, lastAngle2+radians(angles2[i]));
    lastAngle2 += radians(angles2[i]);
  }
}

void judgePage2(){
  if (keyPressed){
    b=1;
    c=0;
  }
  if (b==1 && c==0){
    page1();
  }
}