import 'package:flutter/material.dart';
import 'package:quotes/quote_card.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Osca Wilde',text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Osca Wilde',text: 'I have nothing to declare except my genius'),
    Quote(author: 'Osca Wilde',text:  'The truth is rarely pure and never simple'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
            "Awesome Quotes",
            style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            },
        )).toList(),
      ),
    );
  }
}


