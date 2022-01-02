import 'package:flutter/material.dart';

class KavramlarOgrenmeAlani extends StatelessWidget {KavramlarOgrenmeAlani( this.kavramBir, this.kavramIki,  this.kavramUc, this.kavramDort, this.ogrenmeAlani);
final String kavramBir;
final String kavramIki;
final String kavramUc;
final String kavramDort;
final String ogrenmeAlani;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffFFCA8C),
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                // print('Card tapped.');
              },
              child: SizedBox(
                height: 130,
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
                      const SizedBox(height: 10),
                      Text(
                        kavramBir,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.indigo[700],
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        kavramIki,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.indigo[700],
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        kavramUc,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.indigo[700],
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                        Text(
                          kavramDort,
                          style: TextStyle(
                            fontSize: 12,
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
              color: Color(0xff5DF9D3),
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                // print('Card tapped.');
              },
              child: SizedBox(
                height: 130,
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