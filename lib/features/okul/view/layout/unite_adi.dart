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
        color: Theme.of(context).colorScheme.primaryVariant,
      ),
      child: SizedBox(
        height: 55,
        child: Center(
          child: Text(
            unideninAdi,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
      ),
    );
  }
}
