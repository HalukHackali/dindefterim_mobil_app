import 'package:flutter/material.dart';

class StretchButton extends StatefulWidget {

  const StretchButton(
      {required this.kademeSayfasiLinki, required this.kademeAdi});

  final Widget kademeSayfasiLinki;
  final String kademeAdi;

  @override
  _StretchButtonState createState() => _StretchButtonState();
}

class _StretchButtonState extends State<StretchButton> {
  final leftPadding = const EdgeInsets.only(left: 12.0);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width - 40.0,
        height: MediaQuery.of(context).size.width / 8,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: leftPadding,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Text(
                        widget.kademeAdi,
                        style: Theme.of(context).textTheme.headline5!,
                      ),
                    ),
                    const SizedBox(
                      width: 55.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Theme.of(context).colorScheme.onSurface,
                        size: 40.0,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => widget.kademeSayfasiLinki));
          },
        ),
      ),
    );
  }
}
