import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
                //This will pass the Function as parameter
                onPressed: () => delete(),
                label: Text("delete quote"),
                icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
