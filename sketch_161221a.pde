PImage img1,img2,img3,img4,img5,img6,img7,img8;
PFont font1;
int a = 0;
int b = 1;
int c = 0;
int d = 0;

Scrollbar bar1;

Table coffeeone, coffeethree, coffeesix, coffeetotal;

String[] coffeeId = new String[31348];
String[] account;

int male = 0;
int female = 0;
int coffeemale=0;
int coffeefemale=0;

int bachelor = 0;
int master = 0;
int phd = 0;
int coffeebachelor = 0;
int coffeemaster = 0;
int coffeephd = 0;

int date = 0;

float[] p1 = new float[31] ;
float[] p2 = new float[31];
float[] p3 = new float[31];
float[] p4 = new float[31];
float[] p5 = new float[31];
float[] p6 = new float[31];
float[] p7 = new float[31];
float[] p8 = new float[31];
float[] p9 = new float[31];
float[] p10 = new float[31];
float[] p11 = new float[31];
float[] p12 = new float[31];

int[] angles = {120,120,120};
int[] angles2 = {180,180};
color[] pieColor = {#99CC99,#669933,#336633};
color[] pieColor2 = {#99CC99,#669933};

int x0 = 770;
int y0 = 650;
float[] xPos = {470,555,786,1006,1073,472,905};
float[] yPos = {470,630,437,512,672,830,821};
float[] r = {90,150,110,120,100,60,70};
String[] name = {"一餐","二餐","三餐","四餐","五餐","六餐","哈乐"};
float[] lineWeight = {3,9,6,7,4,1,2};
String[] saleRank = {"5th","销售冠军","销售季军","销售亚军","4th","7th","6th"};

void setup(){
  size(1000,628);
  
  font1=createFont("Monaco+Yahei",20);
  img1 = loadImage("welcome.jpg");
  img2 = loadImage("timo2.jpg");
  img3 = loadImage("time.jpg");
  img4 = loadImage("eno.jpg");
  img5 = loadImage("一餐.jpg");
  img6 = loadImage("哈乐.jpg");
  img7 = loadImage("二餐.jpg");
  img8 = loadImage("四餐.jpg");
  coffeeone = loadTable("coffeetimo.csv","header");
  coffeethree = loadTable("coffeethree.csv","header");
  coffeesix = loadTable("coffeesix.csv","header");
  //account = loadTable("account.csv","header");
  account = loadStrings("account.txt");
  coffeetotal = loadTable("coffeetotal.csv","header");
  
  bar1 = new Scrollbar(210,540,600,16,1);
  
  //getGenderPortion();
  //getEducationPortion();
  
    for(int i = 0; i < 31348; i++){
    TableRow a = coffeetotal.getRow(i);   
    coffeeId[i] = a.getString(0);
  }
  for(int i = 0; i < 31; i ++){
    p1[i] = random(40,100);
    p2[i] = random(40,100);
    p3[i] = random(40,100);
    p4[i] = random(30,90);
    p5[i] = random(30,90);
    p6[i] = random(30,90);
    p7[i] = random(20,80);
    p8[i] = random(20,80);
    p9[i] = random(20,80);
    p10[i] = p1[i] + p2[i] + p3[i];
    p11[i] = p4[i] + p5[i] + p6[i];
    p12[i] = p7[i] + p8[i] + p9[i];
  }  
}

void draw(){
  if (a == 0){
   welcome(); 
  }
  else{
   initialize();
   judge();
  }
}

void welcome(){
  background(img1);
  noFill();
  stroke(255);
  strokeWeight(4);
  ellipse(770,260,80,80);
  
  fill(255);
  textSize(45);
  text("COFFEE at SJTU",610,180);
  
  fill(255);
  textSize(40);
  text("Go",745,274);
  
  if(mouseX >= 725 && mouseX <= 815 && mouseY >= 214 && mouseY <= 300){
    fill(#669933);
    stroke(0);
    strokeWeight(4);
    ellipse(770,260,80,80);
    
    fill(0);
    textSize(40);
    text("Go",745,274);
    
    if (mousePressed){
      a = 1;
      b = 1;
      c = 0;      
    }
  }
}

void getGender(){

  
  for(int i = 0; i < account.length ; i ++){
  //  println(account[i]);
    String[] line = splitTokens(account[i]);
    String gender = line[2];
    String Id = line[0];
   // println(line.length);
   
   if(gender.equals("男")){
      male ++;
      }
      else if(gender.equals("女") ){
      female++;
      }
    
    for(int j = 1000; j < 1200; j ++){
      if(gender.equals("男") && Id.equals(coffeeId[j])){
      coffeemale ++;
      }
      else if(gender.equals("女") && Id.equals(coffeeId[j])){
      coffeefemale ++;
      }
    }
   }
  }
  
  void getEducation(){
  for(int i = 0; i < account.length ; i ++){
  //  println(account[i]);
    String[] line = splitTokens(account[i]);
    String program = line[5];
    String Id = line[0];
   // println(line.length);
   
   if(program.equals("本科")){
      bachelor ++;
      }
      else if(program.equals("硕士") ){
      master ++;
      }
      else if(program.equals("博士") ){
      phd ++;
      }
   
    for(int j = 1000; j < 1200; j ++){
      if(program.equals("本科") && Id.equals(coffeeId[j])){
      coffeebachelor ++;
      }
      else if(program.equals("硕士") && Id.equals(coffeeId[j])){
      coffeemaster ++;
      }
      else if(program.equals("博士") && Id.equals(coffeeId[j])){
      coffeephd ++;
      }
    }
   
  }
}

void initialize(){
  background(255);
}
void judge(){
 if (b==1 && c==0){
  page1();
 }else
 if (b==2 && c==1){
    page2();
 }else
 if (b==2 && c==2){
    page3();
 }else
 if (b==2 && c==3){
   page4(); 
  }
}

void page1(){
 drawPage1();
 judgePage1();
}

void page2(){
  drawPage2();
  judgePage2();
}

void page3(){
  drawPage3();
  judgePage3();
}

void page4(){
  drawPage4();
  judgePage4();
}