import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
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
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {
              delete();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.white,
                elevation: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
                Text(
                  "Delete quote",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
