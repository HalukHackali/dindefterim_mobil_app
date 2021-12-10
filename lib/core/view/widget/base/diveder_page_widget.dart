import 'package:flutter/material.dart';

class DividerPageWidget extends StatelessWidget {
  const DividerPageWidget({
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
              width: MediaQuery.of(context).size.width * 0.3,
              height: 3.0,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          const Icon(Icons.description_sharp),
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
              width: MediaQuery.of(context).size.width * 0.3,
              height: 3.0,
            ),
          ),
        ],
      ),
    );
  }
}