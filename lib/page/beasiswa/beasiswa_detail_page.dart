import 'package:alphago/config/app_data.dart';
import 'package:flutter/material.dart';

class BeasiswaDetailPage extends StatelessWidget {
  BeasiswaDetailPage({Key? key}) : super(key: key);

  AppData appData = AppData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beasiswa Mahogara 2022',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/beasiswa1.png',
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
                    appData.textBeasiswa,
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
