import 'package:flutter/material.dart';

import '../config/app_color.dart';

class customGender extends StatelessWidget {
  customGender({Key? key, required this.label, required this.hintText})
      : super(key: key);

  String label;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
              color: AppColor.dark,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            )),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Wrap(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.grey),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text('Male',
                        style: TextStyle(
                          color: AppColor.dark,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Wrap(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.grey),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text('Female',
                        style: TextStyle(
                          color: AppColor.dark,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
