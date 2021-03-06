import 'package:flutter/material.dart';

class UniteAdi extends StatelessWidget {
  final unideninAdi;

  const UniteAdi(
    this.unideninAdi, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffFEA741),
      ),
      child: SizedBox(
        height: 55,
        child: Center(
          child: Text(
            unideninAdi,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: const Color(0xff586191),
                  
                ),
          ),
        ),
      ),
    );
  }
}
