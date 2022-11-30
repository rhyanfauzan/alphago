import 'package:alphago/config/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_color.dart';

class itemBeasiswa extends StatelessWidget {
  const itemBeasiswa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoute.beasiswadetail);
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'assets/beasiswa1.png',
              width: 150,
              height: 116,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Beasiswa Mahaghora',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Beasiswa Mahaghora adalah bagian dari salah satu Corporate sosial resposibility (CSR) PT Mahagora yang memberikan kesempatan kepada putra-putri in...',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/ic_calendar.png',
                      width: 25,
                    ),
                    const Text(
                      '1 bulan yang lalu',
                      style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
