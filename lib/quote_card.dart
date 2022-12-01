import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  // //Works
  // String text;
  // String author;
  //
  // QuoteCard({ required this.text, required this.author});


  //New Approach
  final Quote quote;
  final VoidCallback delete;


  QuoteCard({ required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16,16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8,),
            IconButton(
                icon: Icon(Icons.delete),
                onPressed: delete,
            )
          ],
        ),
      ),
    );
  }
}