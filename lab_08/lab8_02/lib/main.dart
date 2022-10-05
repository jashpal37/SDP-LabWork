import 'package:flutter/material.dart';
import 'quote.dart';
//code test : list of data

void main() => runApp(MaterialApp(
  home: EchoList(),
  debugShowCheckedModeBanner: false,
));


class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  List<Quote> quotes = [
    Quote(text: 'You forget what you want to remember, and you remember what you want to forget',author:
    'Cormac McCarthy'),
    Quote(author: 'nature', text: 'The most beautiful things in the world cannot be seen or touched, they are felt with the heart'),
    Quote(author: 'Eyes', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'Jignesh sir'),
  ];


  //card widget:-
  Widget quoteTemolate(quote){
    return Card(
      color: Colors.lightBlueAccent,
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),),
            SizedBox(height: 10,),
            Text(quote.author,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
            )
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
    body: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,

      children: quotes.map((quote) => quoteTemolate(quote)).toList(),
    ),
    );
  }
}











/*
void main()=> runApp(MaterialApp(
  home: FinalTest(),
  debugShowCheckedModeBanner: false,
  debugShowMaterialGrid: false,
));

class FinalTest extends StatefulWidget {
  const FinalTest({Key? key}) : super(key: key);

  @override
  State<FinalTest> createState() => _FinalTestState();
}

class _FinalTestState extends State<FinalTest> {
  num age = 21.0;
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
/*
// first app with add button:-
      body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
          ),
          Text('NAME:',
          style: TextStyle(
            color: Colors.grey[900],
            letterSpacing: 2.0,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 5.0,),
          Text('Jashpalsinh Parmar',
          style: TextStyle(
            color: Colors.blue[900],
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            // fontFamily: 'RobotoMono'
            ),
          ),
          SizedBox(height: 30.0,),
          Text('AGE',
          style: TextStyle(
            color: Colors.grey[900],
            letterSpacing: 2.0,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 5.0,),
          Text('$age',
            style: TextStyle(
              color: Colors.blue[900],
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'RobotoMono',),
          ),
          SizedBox(height: 30.0,),
      Row(
        children: [
          Icon(Icons.email,
          color: Colors.purple[800],),
          Text('jashpalsinhparmar422@gmail.com',
          style: TextStyle(
            color: Colors.blue[900],
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontSize: 15,
            fontStyle: FontStyle.italic
          ),)
        ],
      ),
          Padding(
            padding: EdgeInsets.fromLTRB(260, 320, 0, 20),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                age += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.brown,
          ),
          ),
        ],
      ),
      ),
*/
/*// Add and Minus App using statefull widget (AppBar is same for this..)
    body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('When you Hot Restart it, it is 21.0..',
        style: TextStyle(
          color: Colors.blue,
          letterSpacing: 1.0,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),),
        SizedBox(height: 10.0),
        Text('$age',
        style: TextStyle(
          color: Colors.blue[900],
          letterSpacing: 3.0,
          fontWeight: FontWeight.bold,
          fontSize: 50.0,
        ),),
        SizedBox(height: 50),
        Container(
          padding: EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 200.0),
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    age += 1;
                  });
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.brown,
              ),
              SizedBox(width: 210.0,),
              FloatingActionButton(onPressed: () {
                setState(() {
                  age -= 1;
                });
              },
                child: Icon(Icons.remove),
                backgroundColor: Colors.blue,
              ),
            ],
          )
        ),
      ],
    ),*/
    );
  }
}
*/