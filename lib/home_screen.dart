import 'package:flutter/material.dart';
import 'book_data.dart';
import 'book_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bookstore')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (ctx, i) => ListTile(
          title: Text(books[i].title),
          subtitle: Text(books[i].author),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BookDetailScreen(book: books[i]),
              ),
            );
          },
        ),
      ),
    );
  }
}
