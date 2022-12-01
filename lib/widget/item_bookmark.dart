import 'package:flutter/material.dart';

import '../config/app_color.dart';

class itemBookmark extends StatelessWidget {
  const itemBookmark({
    Key? key,
    required this.mWidth,
  }) : super(key: key);

  final double mWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColor.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          children: [
            Image.asset(
              'assets/bookmark1.png',
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Beasiswa Mahogara',
                          style: TextStyle(
                            color: AppColor.dark,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          )),
                      Text('Informasi Beasiswa',
                          style: TextStyle(
                            color: AppColor.dark,
                            fontSize: 8,
                          )),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/ic_bookmark.png',
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
