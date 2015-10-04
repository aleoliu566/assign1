/* please implement your assign1 code in this file. */
PImage fighter,hp,treasure,enemy,bg1,bg2;
int x = 0 ,bgx1,bgx2 = 0;
float a,tx,ty,hpy,enemyx,enemyy;

void setup () {
    size(640,480) ;  // must use this size.
    fighter = loadImage("assign1/img/fighter.png");
    a = random(430);
    
    hp = loadImage("img/hp.png");
    hpy = random(198);
    fill(255,0,0);
    noStroke();
  
    treasure = loadImage("img/treasure.png");
    tx = random(640);
    ty = random(440);
    
    enemyy = random(440);
    enemy = loadImage("img/enemy.png");
    
    bg1 = loadImage("img/bg1.png");
    bg2 = loadImage("img/bg2.png");
    

}

void draw() {
    image (bg1,bgx1,0);
    image (bg2,bgx2+640,0);
    bgx1 = bgx1 - 2;
    if(bgx1==-640){
      bgx1=640;
    }
    bgx1 = bgx1 % 641;
    bgx2 = bgx2 - 2;
    if(bgx2==-1280){
      bgx2=0;
    }
    bgx2 = bgx2 % 1281;
    //bgx2 = bgx2 - 2;
    //bgx2 = bgx2 % 640;
    
    image(treasure,tx,ty);
    image(fighter,590,a);
    image(enemy,x,enemyy);
    x = x+2;
    x = x%640;
    rect(18, 13, hpy, 20);
    image(hp,10,10);    
  // your code
}
