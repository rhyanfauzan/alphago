import 'package:alphago/config/app_route.dart';
import 'package:alphago/widget/custom_gender.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_color.dart';
import '../../widget/custom_textfield.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Saya',
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
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColor.white),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColor.primary),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Center(
                            child: Text('Info Profile',
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                )),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColor.white),
                        child: InkWell(
                          onTap: () {
                            Get.offNamed(AppRoute.profilpribadi);
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Center(
                              child: Text('Info Pribadi',
                                  style: TextStyle(
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/avatar.png',
                  fit: BoxFit.cover,
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text('Antony Gunawan ',
                  style: TextStyle(
                    color: AppColor.dark,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  )),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.grey),
                      borderRadius: BorderRadius.circular(50),
                      color: AppColor.white),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    child: Text('Ubah Foto Profile',
                        style: TextStyle(
                          color: AppColor.dark,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              customTextfield(
                label: 'Username',
                hintText: 'Enter Your Username',
              ),
              customTextfield(
                label: 'Bio ',
                hintText: 'Enter Your Bio',
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
