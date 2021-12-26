import 'package:flutter/material.dart';

class SinifDividerWidget extends StatelessWidget {
  const SinifDividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            elevation: 3.0,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[],
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(15.0),
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 4,
              height: 3.0,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Text(
            "Sınıflar",
            style: Theme.of(context).textTheme.headline4!.copyWith(color: Theme.of(context).colorScheme.background)
          ),
          const SizedBox(
            width: 20.0,
          ),
          const SizedBox(
            height: 30.0,
          ),
          Material(
            elevation: 3.0,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[],
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 4,
              height: 3.0,
            ),
          ),
        ],
      ),
    );
  }
}