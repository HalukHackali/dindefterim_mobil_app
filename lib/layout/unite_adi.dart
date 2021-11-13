import 'package:flutter/material.dart';

class UniteAdi extends StatelessWidget {
  final unideninAdi;

  const UniteAdi(this.unideninAdi, {Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber
      ),
      child: SizedBox(
        height: 55,
        child: Center(
          child: Text(
            unideninAdi,
            style: TextStyle(
              fontSize: 25,
              color: Colors.indigo[700],
            ),
          ),
        ),
      ),
    );
  }
}