import 'package:flutter/material.dart';
import 'package:template_project/bookModel.dart';

class HomePage extends StatelessWidget {
  final List<Book> books = [
    Book(title: 'Melangkah', Penulis: 'J.S. KHAIREN', image: 'assets/Novel1.jpg', description:'Buku ini tentang petualangan di Indonesia. Cerita di Novel ini juga mengutamakan kisah - kisah pahlawan. '),
    Book(title: 'Opredo Cerita Asli Indonesi Vol. 1', Penulis: 'Dian Aprilia Dewi', image: 'assets/Cerita.jpg', description: 'Buku ini berisikan tentang dongeng, legenda, dan cerita rakyat yang sudah tidak asing lagi di kalangan masyarakat Indonesia.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text('Penulis: ${book.Penulis}'),
            trailing: ElevatedButton(
              child: Text('Detail'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: book,
                );
              },
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu Navigasi', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: Text('Tentang Aplikasi'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
    );
  }
}
