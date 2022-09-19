// import 'package:flutter_cursor/flutter_cursor.dart';
import 'package:flutter/material.dart';

/* //1) For Row Column :- Expanded and Flex
void main() => runApp(const MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row and Column Layout:'),
        brightness: Brightness.dark,
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisSize: MainAxisSize.max,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.baseline,
/*  column children:
        // children: [
        //   Text('helo - win',
        //   style: TextStyle(
        //     color: Colors.red,
        //     letterSpacing: 2,
        //   fontSize: 35),
        //   ),
        //   FlatButton(onPressed: () {},
        //       child: Text('Helo not win',
        //         style: TextStyle(
        //             letterSpacing: 2,
        //             fontSize: 35)
        //       ),
        //       color: Colors.orange),
        //   Container(
        //     child: Text('Helo is equal to win',
        //         style: TextStyle(
        //         letterSpacing: 2,
        //         fontSize: 35)
        //     ),
        //     margin: EdgeInsets.only(top: 40.0),
        //     color: Colors.limeAccent,
        //     padding: EdgeInsets.only(left: 30.0),
        //   )
        // ], */
/* test1      children: [
        Row(),
        Container(
          color: Colors.limeAccent,
          padding: EdgeInsets.all(30.0),
          child: Text('hello.'),
        ),
        Container(
          color: Colors.green,
          padding: EdgeInsets.all(30.0),
          child: Text('Hiiii'),
        ),
        Container(
          color:Colors.limeAccent,
          padding: EdgeInsets.all(30.0),
          child: Text('How are you??',
          style: TextStyle(
            fontSize: 25),
          ),
        ),
      ],*/
      children: [
        //Expanded(
          Flex(
          direction: Axis.vertical,
          // child: Row(    "for expanded"
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.0),
              color: Colors.deepOrange[800],
              padding: EdgeInsets.all(30.0),
              child: Text('container 1'),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              color: Colors.limeAccent,
              padding: EdgeInsets.all(30.0),
              child: Text('container 2'),
            ),

            Container(
              margin: EdgeInsets.only(left: 20.0),
              color: Colors.green[800],
              padding: EdgeInsets.all(30.0),
              child: Text('container 3')

            ),
          ],
          )
    // ), for row in expanded
    // ) expanded
      ],
      ),
    );
  }
}
*/

// First App:- 
void main()=> runApp(MaterialApp(
  home: FinalTest(),
  debugShowCheckedModeBanner: false,
  debugShowMaterialGrid: false,
));

class FinalTest extends StatelessWidget {
  const FinalTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                // backgroundColor: Colors.white70,
                backgroundImage: AssetImage('assets/logo.png'),
              ),Text('NAME',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,),
              ),
              SizedBox(height: 10,),
              Text('jashpalsinh parmar',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,),
              ),
              SizedBox(height: 40,),
              Text('AGE',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,),
              ),
              SizedBox(height: 10,),
              Text('20',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 2.0,),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(
                    Icons.email_rounded,
                    color: Colors.deepPurple[800],
                  ),
                  SizedBox(height: 10.0,),
                  Text('jashpalsinhparmar422@gmail.com',
                  style: TextStyle(
                    color: Colors.brown[800],
                    fontSize: 16.0,
                    letterSpacing: 1.5,),
                  )
                ],
              ),
              SizedBox(height: 20,),
              OutlinedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.blue;
                        return null; // Defer to the widget's default.
                      }
                  ),),
                onPressed: () { },
                child: Text('Press me for hovered',
                style: TextStyle(
                  color: Colors.black,
                ),),
              )
            ],
          ),
      ),
    );
  }
}

// class HoverCursor extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
