import 'package:flutter/material.dart';

class KavramlarOgrenmeAlani extends StatelessWidget {KavramlarOgrenmeAlani( this.kavramBir, this.kavramIki, this.ogrenmeAlani);
final String kavramBir;
final String kavramIki;
final String ogrenmeAlani;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.cyan,
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                // print('Card tapped.');
              },
              child: SizedBox(
                height: 100,
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'Kavramlar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.indigo[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        kavramBir,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.indigo[700],
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        kavramIki,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.indigo[700],
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
         const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.cyan,
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                // print('Card tapped.');
              },
              child: SizedBox(
                height: 100,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Öğrenme Alanı',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.indigo[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      ogrenmeAlani,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.indigo[700],
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}