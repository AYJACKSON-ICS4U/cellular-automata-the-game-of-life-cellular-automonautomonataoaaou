// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Wolfram Cellular Automata

// Simple demonstration of a Wolfram 1-dimensional cellular automata
// with the system scrolling by
// Also implements wrap around

CA ca;   // An object to describe a Wolfram elementary Cellular Automata


void setup() {
  size(800, 800);
  frameRate(30);
  background(255);
  //float m  =1;
  //m = random(1,5);
  //if (m==1)
  //{
  //int[] ruleset = {0,1,1,1,1,0,1,1};           // Rule 222  
  //} else if (m==2){
  //  int[] ruleset = {0,1,1,1,1,1,0,1};           // Rule 190 
  //}else if (m==3){
  //  int[] ruleset = {0,1,1,1,1,0,0,0};           // Rule 30   
  //}else if (m==4){
  //  int[] ruleset = {0,1,0,1,1,0,1,0};           // Rule 90  
  //}else{
  //  int[] ruleset = {0,1,1,1,0,1,1,0};             // Rule 110  
  //}
 // I tried to get a random to select a certain ruleset, but it was not working because it wanted a certain 
  int[] ruleset = {0,1,0,1,1,0,1,0}; //this one is a fractal
  // 
 
 
 // int[] ruleset = {0,1,1,1,0,1,1,0};             // Rule 110  
 
  
  ca = new CA(ruleset);                 // Initialize CA
}

void draw() {
  ca.display();          // Draw the CA
  ca.generate();
}