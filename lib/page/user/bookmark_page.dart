import 'package:alphago/config/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_color.dart';
import '../../widget/custom_textfield.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Bookmark',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Bookmark ',
                          style: TextStyle(
                            color: AppColor.dark,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  
                ]),
          ),
        ));
  }
}
