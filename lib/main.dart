import 'dart:collection';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Bagian titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding di sepanjang setiap tepinya
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Kolom di awal baris
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // padding bawah 8
                  child: const Text(
                    'Skypiea',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // teks tebal
                    ),
                  ),
                ),
                const Text(
                  'Grand Line',
                  style: TextStyle(
                    color: Colors.grey, // teks berwarna abu-abu
                  ),
                ),
              ],
            ),
          ),
          /* soal 3 */
          Icon(
            Icons.star, // ikon bintang
            color: Colors.red, // warna merah
          ),
          const Text('41'), // teks "41"
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Skypiea adalah sebuah pulau yang terletak di langit di atas Paradise. Ini adalah latar utama dari Arc Skypiea, dan pulau keenam yang dikunjungi oleh Bajak Laut Topi Jerami di Grand Line.\n\n'
        'Ahmed Fathir Syafaat\n2241720083',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Ahmed Fathir Syafaat 2241720083',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/skypiea.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
