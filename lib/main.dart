import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(
    MaterialApp(
      home: QuoteList(),
    )
  );
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'I Am Vegeta, I Have No Limits', author: 'Vegeta'),
    Quote(text: "If I Won't, Who Will" , author: 'Goku'),
    Quote(text: 'Rise Above Your Fears', author: 'Vegeta'),
  ];

  // Widget quoteTemplate(quote) {
  //   // return new QuoteCard(text: quote.text, author: quote.author);
  //   return new QuoteCard( quote: quote );
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // children: quotes.map((q)=> quoteTemplate((q))).toList(),
        children: quotes.map((q)=> QuoteCard(
            quote: q,
            delete: (){
              setState(() {
                quotes.remove(q);
              });
            }
        )).toList(),
      ),
    );
  }
}



