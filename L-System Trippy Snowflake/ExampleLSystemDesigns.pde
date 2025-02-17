// KJ: ONLY CHANGE THIS TO CREATE A NEW L-SYSTEM. THE AXIOM IS THE STARTING SHAPE.
// KJ: THEN KEEP THE HASHMAP STRUCTURE BUT CHANGE THE HASHMAP RULES TO PUT A NEW PRODUCTION RULE
// KJ: FOR EACH CHARACTER.

// ExampleLSystemDesigns - contains helper methods to create and 
// initialize an LSystem
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system

// MAKE NEW L SYSTEMS OFF THIS EXAMPLE
LSystem initSquare() {
  // initialize turtle variables - CHANGE THIS IF YOU WANT
  float moveDist = 300;
  float rotateAngle = 45;
  float scaleFactor = 1;
  
  // The intial axiom / input string - CHANGE THIS TO MAKE A NEW STARTING SHAPE
  String axiom = "F";
  
  // Create any production rules - CHANGE THIS
  HashMap<Character, String> rules = new HashMap<>();
 rules.put('F', "[FF]+[FF]+[FF]+[FF]+[FF]+[FF]+[FF]+FF");
 //rules.put('X', "F");
 rules.put('Y', "-FX");
    
  // Create and return the Lsystem - DO NOT NEED TO CHANGE THIS
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
