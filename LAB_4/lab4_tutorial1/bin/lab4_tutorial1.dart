import 'package:lab4_tutorial1/lab4_tutorial1.dart' as lab4_tutorial1;

/*
class UserDetails{
  int id =0;
  String name = "";
  //annotations
  @override
  String toString(){
    return 'UserDetails(id: $id, name: $name)';
  }

  String toJson(){
    return '{"id":$id,"name":"$name"}';
  }

}
*/
/* Mini-Exersice 
class Password{
  String value = "";

  @override
  String toString(){
    return 'Password(value: $value)';
    
  }

  bool isValid(String str){
    int len = str.length;
    if(len > 8){
      return true;
    }
    return false;
  }
}
*/

/* //Default constructor
/* Custom constructors:-
the constructor name should be the same as the class name. This type of
constructor is called a generative constructor because it directly generates an object of the same type.
*/
class Address {
Address();
var value = '';
}
*/

/*Long-form constructor:-
class User {
User(int id, String name) {
this.id = id;
this.name = name;
}
int id = 0;
String name = '';
}
*/
/*Short-form constructor
class User{
User(this.id, this.name);
int id=0;
String name= "";
}
*/
/*Named constructors:-
class User{
User.anonymous() {
int id = 0;
String name = 'anonymous';
}
}
*/


class User {
// unnamed constructor
User({this.id = 0, this.name = 'anonymous'});
// named constructor User.anonymous(): this();
int id;
String name;
}


void main() {
// print('Hello world: ${lab4_tutorial1.calculate()}!');
/*1.
//Defining a class,Assigning values to properties,Printing an object
    final user = UserDetails(); //with out new keyword..
    print(user); // User is Instance of 'UserDetails'.
    user.id = 1203; user.name = "Tom";
    print(user.id); print(user.name);// 1203 , Tom..
    print(user.toString());//UserDetails(id: 1203, name: Tom).
*/
/*2.
/*
//Adding a JSON serialization method
    final user = UserDetails();
    user.id = 1203; user.name = "Tom";
    print(user.toString());
    user.id = 1204; user.name = "Chris";
    print(user.toJson());
*/
/*
//Cascade notation
  final user = UserDetails()
               ..id = 1205
               ..name = "ray";
  print(user.id);
*/  
*/          
/* Mini-Exersice
    final pass = Password();
    String? value  = stdin.readLineSync()!;
    print(pass.isValid(value));
*/
/*
final user = User(42, 'Ray');
print(user);
*/
/*
final anonymousUser = User.anonymous();
print(anonymousUser);
User(id: 0, name: 'anonymous');
*/  

var vicki = User(id: 24, name: "Vicki");
vicki.name = "Nefarious Hacker";
print(vicki);


}
