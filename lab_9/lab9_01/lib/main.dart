
import 'package:flutter/material.dart';
import 'package:lab9_01/quote.dart';
import 'package:lab9_01/quote_card.dart';


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
    // Quote(text: 'You forget what you want to remember, and you remember what you want to forget',author:
    // 'Cormac McCarthy'),
    Quote(author: 'nature', text: 'The most beautiful things in the world cannot be seen or touched, they are felt with the heart'),
    Quote(author: 'Eyes', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'Jignesh sir'),

  ];


  // //card widget:-
  // Widget quoteTemolate(quote){
  //   return QuoteCard(quote: quote,);
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,

        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            },
        )).toList(),
      ),
    );
  }
}


