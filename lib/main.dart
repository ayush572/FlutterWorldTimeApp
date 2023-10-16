import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote('Don\'t see through the eyes, but see through the mind', 'Ayush Daga'),
    Quote('Games are the best way to understand any task or situation as they provide instant feedback', 'Bindiya Daga'),
    Quote('You can save by spending more!', 'Vikas Daga')

  ];
  // Add a function to handle quote deletion
  void deleteQuote(Quote quote) {
    setState(() {
      quotes.remove(quote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(

          quote: quote,
          delete: deleteQuote // Pass the deleteQuote function
        )).toList(),
      ),
    );
  }
}





