import 'package:flutter/material.dart';
import 'package:template_project/bookModel.dart';

class DetailBukuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Book book = ModalRoute.of(context)!.settings.arguments as Book;

    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: unnecessary_null_comparison
            book.image.isNotEmpty
                ? Image.asset(
                    book.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 250,
                  )
                : Text('Gambar tidak tersedia'),
            SizedBox(height: 16),
            Text(
              book.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Penulis: ${book.Penulis}'),
            SizedBox(height: 16),
            Text(
              book.description,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
