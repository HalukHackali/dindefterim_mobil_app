import 'package:dindefterim_sari/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

Widget unitAltKonuAdiBant(BuildContext context, String konuAdi, Widget pageLink, int renk) {

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(renk),
    ),
    child: InkWell(
      splashColor: Colors.blue.withAlpha(30),
      onTap: () {
        // print('Card tapped.');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                pageLink));
      },
      child:  SizedBox(
        height: 42,
        child: Center(
          child: Text(
            konuAdi,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}