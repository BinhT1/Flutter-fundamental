import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: "quote 1 alskdjf;a lskdfja;ls dkfja;l sdkfj a;lsd kfj;al sdkfja;",
        author: "Binh 1"),
    Quote(text: "quote 2", author: "Binh 2"),
    Quote(text: "Quote 3", author: "Binh 3")
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quote.text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            quote.author,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: quotes.length,
            itemBuilder: (context, index) {
              return quoteTemplate(quotes[index]);
            }));
  }
}
