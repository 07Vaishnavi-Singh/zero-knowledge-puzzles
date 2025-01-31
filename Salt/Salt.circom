pragma circom 2.1.4;



// In this exercise, we will learn an important concept related to hashing . There are 2 values a and b. You want to 
// perform computation on these and verify it , but secretly without discovering the values. 
// One way is to hash the 2 values and then store the hash as a reference. 
// There is on problem in this concept , attacker can brute force the 2 variables by comparing the public hash with the resulting hash.
// To overcome this , we use a secret value in the input privately. We hash it with a and b. 

// This way brute force becomes illogical as the cost will increase multifolds for the attacker.


// Input 3 values, a, b and salt. 
// Hash all 3 using mimcsponge as a hashing mechanism. 
// Output the res using 'out'.

include "../node_modules/circomlib/circuits/poseidon.circom" ;
include "../node_modules/circomlib/circuits/comparators.circom" ;


template Salt() {
    // Your code here..

  signal input a ;
  signal input b ;
signal input salt ;

signal output out ;

component poseidon1 = Poseidon(2);
poseidon1.inputs[0] <== a;
poseidon1.inputs[1] <== salt;

component poseidon2 = Poseidon(2);
poseidon2.inputs[0] <== b;
poseidon2.inputs[1] <== salt;


 component Check =  IsEqual();
   Check.in[0] <== poseidon1.out;
   Check.in[1] <== poseidon2.out;
   

out <== Check.out;



}

component main  = Salt();
// By default all inputs are private in circom. We will not define any input as public 
// because we want them to be a secret , at least in this case. 

// There will be cases where some values will be declared explicitly public .




