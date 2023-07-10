import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  //only non-changable data is allowed
  final Quote quote;

  final Function() delete;
  // ignore: use_key_in_widget_constructors
  const QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
              style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('delete quote'),
            )
          ],
        ),
      ),
    );
  }
}
