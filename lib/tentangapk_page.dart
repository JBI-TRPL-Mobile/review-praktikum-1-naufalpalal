import 'package:flutter/material.dart';

class TentangAplikasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aplikasi Buku',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Developer: MOH. NAUFAL'),
            SizedBox(height: 10),
            Text('NIM: 362358302146'),
            SizedBox(height: 10),
            Text('Versi: 1.0')
          ],
        ),
      ),
    );
  }
}
