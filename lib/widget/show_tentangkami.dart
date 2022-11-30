
import 'package:flutter/material.dart';

import '../config/app_color.dart';
import '../config/app_data.dart';

class showTentangkami extends StatelessWidget {
  showTentangkami({
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
                  'Tentang Kami',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  appData.textTantangKami,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/il_modalbottom.png',
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
