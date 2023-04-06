import 'package:flutter/material.dart';

class Quote {
  String text = "";
  String author = "";

  Quote({required this.text, required this.author});
}

Quote myQuote = Quote(text: "this is a quote text", author: "Binh Boong");
