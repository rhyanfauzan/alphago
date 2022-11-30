import 'package:flutter/material.dart';

import '../config/app_color.dart';

class customTextfield extends StatelessWidget {
  customTextfield({Key? key, required this.label, required this.hintText})
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
        TextFormField(
          decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.grey),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
