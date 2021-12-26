import 'package:flutter/material.dart';

Widget unitAltKonuAdiBant(
    BuildContext context, String konuAdi, Widget pageLink, ) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).colorScheme.background,
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
          child: Text(konuAdi,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).colorScheme.secondaryVariant)),
        ),
      ),
    ),
  );
}
