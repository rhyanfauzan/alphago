import 'package:alphago/config/app_color.dart';
import 'package:flutter/material.dart';

import '../../widget/item_card.dart';

class KompetisiPage extends StatelessWidget {
  const KompetisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.primary,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Text(
                          'Kompetisi',
                          style: TextStyle(color: AppColor.white, fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.lightgrey,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Text(
                          'Beasiswa',
                          style: TextStyle(color: AppColor.white, fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.lightgrey,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Text(
                          'Events',
                          style: TextStyle(color: AppColor.white, fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.lightgrey,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        child: Text(
                          'Magang',
                          style: TextStyle(color: AppColor.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(color: AppColor.lightgrey),
                const SizedBox(
                  height: 14,
                ),
                for (int i = 0; i < 10; i++)
                  itemCard(
                    titleCard: 'Kompetisi',
                    imageCard: 'assets/beasiswa1.png',
                  ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
