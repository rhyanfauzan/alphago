import 'package:alphago/config/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_color.dart';
import '../../widget/custom_textfield.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('Settings ',
                  style: TextStyle(
                    color: AppColor.dark,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Container(
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColor.primary),
                    child: Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            width: 64,
                            height: 64,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'assets/avatar.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Antony Gunawan ',
                          style: TextStyle(
                            color: AppColor.dark,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          )),
                      Text('antonygunawan@gmail.com',
                          style: TextStyle(
                            color: AppColor.dark,
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/text_notifications.png',
                height: 28,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/text_darkmode.png',
                height: 28,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/text_password.png',
                height: 28,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/text_language.png',
                height: 28,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
