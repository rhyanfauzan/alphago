import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:alphago/config/app_color.dart';
import 'package:get/get.dart';

import '../../config/app_route.dart';
import '../../widget/artikel.dart';
import '../../widget/webinar.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: AppColor.primary,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DView.spaceHeight(30),
                    const Text(
                      'Selamat Datang! ',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                          color: AppColor.white),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Upgrade dirimu, Raih Impianmu Jadilah Pemenang Bersama AlphaGo',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColor.white),
                    ),
                    DView.spaceHeight(30),
                  ],
                ),
              ),
            ),
            DView.spaceHeight(10),

            // Banner ------------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Tabung
                          Column(
                            children: [
                              IconButton(
                                icon: Image.asset(
                                  'assets/ic_kompetisi.png',
                                ),
                                iconSize: 100,
                                onPressed: () {
                                  Get.toNamed(AppRoute.kompetisi);
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                icon: Image.asset('assets/ic_beasiswa.png'),
                                iconSize: 100,
                                onPressed: () {
                                  Get.toNamed(AppRoute.beasiswa);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Tabung
                          Column(
                            children: [
                              IconButton(
                                icon: Image.asset('assets/ic_magang.png'),
                                iconSize: 100,
                                onPressed: () {
                                  Get.toNamed(AppRoute.magang);
                                },
                              ),
                            ],
                          ),
                          // Tukar Poin
                          Column(
                            children: [
                              IconButton(
                                icon: Image.asset('assets/ic_events.png'),
                                iconSize: 100,
                                onPressed: () {
                                  Get.toNamed(AppRoute.events);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            DView.spaceHeight(30),

            // Informasi ------------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Webinar',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColor.primary),
                  ),
                  const Text(
                    'Klik laman berikut untuk info lebih lanjut! ',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColor.grey),
                  ),
                  DView.spaceHeight(12),
                  const Webinar(),
                ],
              ),
            ),
            DView.spaceHeight(30),

            // Artikel ------------------------------------------------------------------
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Artikel',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primary),
                      ),
                      const Text(
                        'Klik laman berikut untuk info lebih lanjut! ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: AppColor.grey),
                      ),
                      DView.spaceHeight(12),
                      const Artikel()
                    ])),
            DView.spaceHeight(30)
          ],
        )),
      ),
    );
  }
}
