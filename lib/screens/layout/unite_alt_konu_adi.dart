import 'package:dindefterim_sari/core/constants.dart';
import 'package:dindefterim_sari/core/size_confige.dart';
import 'package:flutter/material.dart';

Widget unitAltKonuAdiBant(
  BuildContext context,
  String konuAdi,
  Widget pageLink,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xff77E2FE),
    ),
    child: InkWell(
      onTap: () {
        // print('Card tapped.');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => pageLink));
      },
      child: SizedBox(
        height: 42,
        child: Center(
          child: Text(
            konuAdi,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kHardTextColor,
              fontSize: getRelativeWidth(0.043),
            ),
          ),
        ),
      ),
    ),
  );
}
