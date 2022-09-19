import 'package:lab9_01/quote.dart';
import 'package:flutter/material.dart';


class QuoteCard extends StatelessWidget {
  final Quote quote;

  final VoidCallback delete;
  QuoteCard({required this.quote,required this.delete});
  // const QuoteCard({
  //   Key? key, required quote,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      //color: Colors.lightBlueAccent,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.deepPurple,
              ),),
            SizedBox(height: 10,),
            Text(quote.author,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 8.0,),
            // OutlinedButton.icon(
            //   onPressed: delete,
            // icon: Icon(Icons.delete_rounded),
            // label: Text('Delete Item'),
            // style: ,)
        TextButton.icon(
          onPressed: delete,
          icon: Icon(Icons.delete),
          label: Text('Delete Quote'),
        )
          ],
        ),
      ),
    );
  }
}
