String userInput = "";
int deleteWorld = 0;
int point = 0;
boolean correctword = false;
boolean enter = false;
ArrayList<String> words = new ArrayList();


String time = "060";
int t;
int interval = 10;  //changes the time

String [] randomWords;
String currentWord = "";

void setup() {

  fill(32);
  textSize(22);
  size(480, 270);

  words.add("bootcamp");
  words.add("java");
  words.add("programming");
  words.add("programmer");
  words.add("classes");
  words.add("loops");
  words.add("functions");
  words.add("methods");
  words.add("array");
  words.add("python");
  words.add("computer");
  words.add("adem");

  randomWords= loadStrings("randomWords50.txt");
  int i = int(random(randomWords.length));
  currentWord = randomWords[i];

}


void draw() 

{
  background(255);
  t = interval-int(millis()/1000);
  time = nf(t, 3);
  


  text(time, width/1.2, height/1.1);
  fill(0);
  text("Your word is: " + currentWord, 20, 50);

  text("Input:" + userInput, 20, 100);
  text("Score: "+ point, width/1.6, height /3.1);
  text("Press 'z' to delete letters", 20, 250);
  noLoop();
}

void checkword() 

{
  println("checkword");
  if (userInput.equals(currentWord) ) {
    point +=1;
    println("correct");
  } else {   
    point -=1;
  }
}

void keyPressed() 

{
  // println("keypressed", key);
  if ( key == '\n') {
    checkword();
    int i = int(random(randomWords.length));
    currentWord = randomWords[i];
    userInput = "";
    // userInput.equals("enter is bing pressed");
    //clear the text after user hits enter!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  } else {
    userInput  += key;
  }

  if (key == 'z') {
    // println("delete");
    int deleteWord = userInput.length();
    userInput = userInput.substring(0, deleteWord-2);
  } else {
    println("");
  }
  loop();
}
