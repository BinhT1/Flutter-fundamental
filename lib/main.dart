import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
              return QuoteCard(
                quote: quotes[index],
                delete: () {
                  setState(() {
                    quotes.remove(quotes[index]);
                  });
                },
              );
            }));
  }
}
