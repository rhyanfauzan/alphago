import 'package:alphago/config/app_data.dart';
import 'package:flutter/material.dart';

class ArtikelDetailPage extends StatelessWidget {
  ArtikelDetailPage({Key? key}) : super(key: key);

  AppData appData = AppData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tips Interview yang bisa kalian gunakan saat mencari kerja',
          style: TextStyle(fontSize: 12),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/artikel2.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  const Text(
                    'Tips Interview yang bisa kalian gunakan saat mencari kerja',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/logo_text.png',
                        width: 74,
                      ),
                      Image.asset(
                        'assets/ic_bookmark.png',
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    appData.textArtikel,
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}