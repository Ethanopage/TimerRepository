/* Program Notes: Geometry is portrait (smaller width)
Demonstrates numpad as Nested FOR Loops
Start with width, then error check height
*/
//
//Global Variables
int appWidth, appHeight;
Boolean windowActivated = false;
float widthSquare, heightSquare;
int numPadColums = 3;
float[] x = new float [numPadColumns];
int numPadRow = 5;
float[] y = new float [numPadRow];
float border=0.0;
//
void setup () {
  size(500, 600);
  //fullScreen(); //displayWidth, displayHeight
  //OPTION: use displayWidth & height instead
  appWidth = width;
  appHeight = height;
  println("Display Width", displayWidth, "Display Height", displayHeight);
  println("App Width", appWidth, "App Height", appHeight);
  //
  //Problem: Display < CANVAS
  if (appWidth>displayHeight) appWidth=displayWidth;
  if (appHeight>displayHeight) appHeight=displayHeight;
  println(appWidth, appHeight);
  //Note: arithmetic will be solved but not CANVAS size()
  //Solution: requires different function, note size(), i.e. fullScreen()
  //
} //End Setup
//
void draw() {
  if ( windowActivated == true ) splashScreen();
} //End draw
//
void mousePressed() {
  //first mouse click, activates WINDOW
  windowActivated = true;
} //End mousePressed
//
void keyPressed( ) {
}  //End keyPressed
//
//End MAIN Program
