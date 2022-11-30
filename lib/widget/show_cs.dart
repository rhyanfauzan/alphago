import 'package:flutter/material.dart';

import '../config/app_color.dart';
import '../config/app_data.dart';

class showCustomerService extends StatelessWidget {
  showCustomerService({
    Key? key,
  }) : super(key: key);

  AppData appData = AppData();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.backgroundScaffold,
        borderRadius: BorderRadius.circular(30),
        // borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(30), topRight: Radius.circular(30))
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        'assets/ic_close.png',
                        width: 16,
                        height: 16,
                      ),
                    )
                  ],
                ),
                const Text(
                  'Customer Service ',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Jika Anda Mempunyai Keluhan ataupun \nPertanyaan silahkan Menghubungi Kontak \nLayanan Customer Di bawah Ini :',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Cs 1 081280704023 (Whatsapp) \n\nCs2 087788211294 (Telegram)',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          const Spacer(),
          Image.asset(
            'assets/il_modalbottom.png',
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
