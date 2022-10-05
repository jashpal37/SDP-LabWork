import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
import 'dart:math';
void main() {
  //print('Hello world: ${lab2_tutorial2.calculate()}!');

  // Comment
 
  //single line comment:-
  // This is a comment. It is not executed.
  // This is also a comment,
  // Over multiple lines.

  // Block comment:-
  /* This is also a comment. Over many...
     many...
     many lines. */

/*
  // Statements:-
  // in print method "" is prefer rather than ''.
  print("Hello, Dart Apprentice reader!");

  // if block
  if(2>1){
    print("True");
  }

*/

/*
  //Expressions:-
  42;
  3+2;
  "hello,dart";
  x;//it gives error.
*/


  // Arithmetic operations:-

/*
  // Simple Oerations:-
  //ADD:-
  print(2 + 9); // Ans. 11
  //SUB:-
  print(75 - 68); // Ans. 7
  //MUL:-
  print(5 * 3); //Ans. 15
  //DIV:-
  print(24 / 3); //Ans. 8
*/

/*
  // Decimal Numbers:-
  print(22 / 7); // Ans is in float 3.142857142857143

  print(22 ~/ 7); // '~/'(truncating division operator) give ans in decimal 3.
*/

/*
  //modulo operation:-
  print(25 % 10); // Ans is 5 (reminder).

  //Order of operation:-
  print(((600 / (6 * 10)) - 52) ~/ (79 % 4)); //here precedence rules appied.
  print(350 / 5 + 2);  // firdt execute '/' and then '*'.
*/

/*
  //Math functions:-
  print(sin(30 * pi / 180));
  print(tan(45 * pi / 180));
  print(cos(120 * pi /180));
  print(sqrt(7));
  print(max(665, 54));
  print(min(0, -85));
  print(max(sqrt(77),15));
*/
/*
  //Mini-exercise
  print(sin(45 * pi /180));
  print(1 / sqrt(2));
*/
/*
  //num type:-
  num my_num;
  my_num = 50;
  //my_num = "yghh";  in num string is not valid.
  my_num = 3.5648;

*/
/*
  //dynamic type:-  
  dynamic my_var;
  my_var = 5658;
  my_var = 6.8959;
  my_var = "hgfduy"; // in dynamic string is valid.
*/
/*
  //var type:-
  var variable=569;
  variable=51;
  variable=62.1235 // not allowed.
*/
/* 
  //const type:-
  const t=89;
  t = 659; //not allowed.
  //Constant variables can't be assigned a value.
*/
/*
  //final:-
  final hoursSinceMidnight = DateTime.now().hour;
  hoursSinceMidnight = 0; //The final variable 'hoursSinceMidnight' can only be set once.
*/
/*
// Mini exercises:-
// 1.
  const myAge = 19;
  var avarageAge = 19.0000;
  var friendAge = 20;
//2.
  avarageAge = (myAge + friendAge)/2;
  print(avarageAge);
//3.
  const testNumber = 15;
  const evenOdd = 15 % 2;
  print(evenOdd);
*/


  //challenges:-
  //1.
/* const myage = 19;
  int dogs = 0;
  dogs++;
  print(myage);
  print(dogs);
*/
  //2.
/*
  int age = 16;
  print(age);
  age = 30;
  print(age);
*/
  //3.
/*
  const x = 46;
  const y = 10;

  const answer1 = (x * 100) + y; // 4610
  const answer2 = (x * 100) + (y * 100); // 5600
  const answer3 = (x * 100) + (y / 10); // 4601.0
  print(answer1);
  print(answer2);
  print(answer3);
*/

  //4.
/*
  const r1 = 50.62;
  const r2 = 8.21;
  const r3 = 95.65;
  const averagerating = r1+r2+r3/3;
  print("The average of three rating is:- ");
  print(averagerating);
*/

  //5.
/*
  const a = 1.1;
  const b = 5.5;
  const c = 3.3;
  double root1 = b + sqrt(b*b - 4*a*c) /2*a; 
  double root2 = -b - sqrt(b*b - 4*a*c) /2*a; 
  print("the first root is");
  print(root1);
  print("the second root is");
  print(root2);
*/





}