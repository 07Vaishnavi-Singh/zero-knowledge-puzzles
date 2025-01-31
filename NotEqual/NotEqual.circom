// pragma circom 2.1.4;


// // Input : a , length of 2 .
// // Output : c .
// // In this exercise , you have to check that a[0] is NOT equal to a[1], if not equal, output 1, else output 0.
// // You are free to use any operator you may like . 

// // HINT:NEGATION
// include "../node_modules/circomlib/circuits/comparators.circom" ;

// template NotEqual() {

//     // Your code here.
// signal input a[2];
// signal output c ;
// var result ;

// component notEqualCheck =  IsEqual();
// notEqualCheck.in[0]<== a[0];
// notEqualCheck.in[1]<== a[1];

//     result <-- a[0] != a[1];
// c<== result ;

// }

// component main = NotEqual();



pragma circom 2.1.4;


// Input : a , length of 2 .
// Output : c .
// In this exercise , you have to check that a[0] is NOT equal to a[1], if not equal, output 1, else output 0.
// You are free to use any operator you may like . 

// HINT:NEGATION

template NotEqual() {

    signal input a[2];
    signal output c;

    signal result;

    result <-- a[0] != a[1];
    c <== result;
}

component main = NotEqual();
