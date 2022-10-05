import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;
import 'dart:math';

void main() {
  //print('Hello world: ${lab3_tutorial1.calculate()}!');

  /*
    "A random interlude":-

    final random = Random();
    while(random.nextInt(6) + 1 == 6){  
    /*nextInt is a method that generates a random integer between 0 and
    one less than the maximum value you give it, in this case, 6.
    --> Here netxtInt generate random integer between 0 and 5, not 6..*/
    print("finally got a six!!");
   }
 */

  /*
    "for loop with continue keyword":-
    for (var i = 0; i < 5; i++) {
      if(i == 2){
      continue; 
      /* --> when i is 2, the continue keyword will tell the for loop to
      immediately go on to the next iteration.*/
      }
      print(i);
    }
  */

  /*
    "for in loop":-
    // ignore: constant_identifier_names
    const my_str = "I love Dart";
    for(var codePoint in my_str.runes){
    print(String.fromCharCode(codePoint));
    }
  */

  /*
    // "For-each loops":-
    // ignore: constant_identifier_names
    const my_num = [1,2,3,4];
    // ignore: avoid_function_literals_in_foreach_calls
    my_num.forEach((element) => {print(element)});
    // either we use => (arrow) or use ;(semicolon).
  */

  // Mini-Exercises
  /*  1.
    var counter = 0;
    while (counter < 10 ) { 
    print("counter is");
    print(counter);
    counter++;
    }
  */

  /* 2.
    for(var i=1;i<11;i++){
      var square = i * i;
      print(square);
    }
  */

  /* 3.
    const num = [1,2,4,7];
    for(var sqRoot in num){
      print(sqrt(sqRoot));
      
    }
  */

  /* 4.
    const numbers = [1,2,4,7];
    numbers.forEach((element) {print(sqrt(element));});
  */

  // Challenge:-
  /*  //1. find the error   ans:- no error!!.
    const firstName = 'Bob';
    if (firstName == 'Bob') {
    const lastName = 'Smith';
    } else if (firstName == 'Ray') {
    const lastName = 'Wenderlich';
    }
  */
  /*
    //2. Boolean challenge
    true && true; false|| false;  //here we have to put ; in between true and fasle.
    (true && 1 != 2) || (4 > 3 && 100 < 1);
    ((10 / 2) > 3) && ((10 % 2) == 0);
  */
  /*
    //5.
    var sum = 0;
    for (var i = 0; i <= 5; i++) {
      sum += i;
    }
    print(sum); // ans is 15 and 6 iteration happen.
  */

  /* 
    //6.final showdown
    for(var i=10;i>=0;i--) {
      print(i);
    }
  */
  
    //7.
    var num = 0.0;
    while (true) {
      print(num);
      num += 0.10;
      if (num > 1.1) {
        break;
      }
    }
  
  

}
