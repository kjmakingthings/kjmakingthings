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
LSystem initMountain() {
  // initialize turtle variables - rotate 60 degrees for a triangular orientation
  float moveDist = 200;
  float rotateAngle = 60;
  float scaleFactor = 1;
  
  // The intial axiom / input string - orient the first angle to be horizontal then create series of trigles
  String axiom = "OF++F++F++F++F++F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
 rules.put('F', "F++F++F+++++F-F++F");
    
  // Create and return the Lsystem 
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
