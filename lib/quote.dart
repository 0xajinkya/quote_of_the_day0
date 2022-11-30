class Quote {
  String text = '';
  String author = '';

  // Quote(String text, String author){
  //   this.text = text;
  //   this.author = author;
  // }

  //Quote myQuote = Quote('I Am Vegeta, I Have No Limits', 'Vegeta')



    // Quote({ required String text, required String author }){
    //   this.text = text;
    //   this.author = author;
    // }
    //Above Code Block Is Equivalent To
  Quote({ required this.text, required this.author });

    //Quote myQuote = Quote(text: 'If I Don't Who Will', author: 'Goku')

}

