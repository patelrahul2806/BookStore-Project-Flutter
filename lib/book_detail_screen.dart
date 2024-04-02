import 'package:flutter/material.dart';
import 'package:group3project2/checkout_screen.dart';
import 'book.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  BookDetailScreen({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                book.title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text('by ${book.author}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Image.asset(book.imageUrl), // Ensure you have this image in assets
              SizedBox(height: 10),
              Text(book.description),
              SizedBox(height: 10),
              Text('\$${book.price.toString()}', style: TextStyle(fontSize: 22)),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                 // primary: Colors.blue, // Background color
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutScreen()));
                },
                child: Text('Buy Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
