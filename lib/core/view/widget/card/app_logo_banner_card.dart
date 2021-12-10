// finished: Ana Sayfa Logo App Name Card
import 'package:flutter/material.dart';

class AppLogoBannerCard extends StatelessWidget {
  const AppLogoBannerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20.0),
      elevation: 7.0,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          scale: 1.0,
                          image: AssetImage("assets/app_logo/logo.png"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "DinDefterim",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                "Din Kültürü ve Ahlak Bilgisi",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.pinkAccent),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.amber,
              Colors.yellowAccent,
            ],
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 40.0,
        height: 120.0,
      ),
    );
  }
}