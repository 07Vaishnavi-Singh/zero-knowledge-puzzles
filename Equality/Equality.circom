pragma circom 2.1.4;

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.


include "../node_modules/circomlib/circuits/comparators.circom" ;

template Equality() {
   // Your Code Here..

   signal input a[3];
   signal output  c ;

   component Check1 =  IsEqual();
   Check1.in[0] <== a[0];
   Check1.in[1] <== a[1];
   
 component Check2 =  IsEqual();
   Check2.in[0] <== a[1];
   Check2.in[1] <== a[2];



c <== Check1.out*Check1.out ;

   
}

component main = Equality();