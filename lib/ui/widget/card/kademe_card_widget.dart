import 'package:dindefterim_sari/core/size_confige.dart';
import 'package:flutter/material.dart';


class KademeCardWidget extends StatelessWidget {
  final String? kademeAdi;
  final String? sinifAdi;
  final Widget kademeLink;
  final Icon? kategoriIcon;
  final Color? kademefRenk;
  final Color? kademefRenk_2;

  const KademeCardWidget(
      {required this.sinifAdi,
      required this.kademeLink,
      required this.kademeAdi,
      required this.kategoriIcon,
      this.kademefRenk,
      this.kademefRenk_2,
      });

  @override
  Widget build(BuildContext context) {
    final cardWidth = getRelativeWidth(0.48);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getRelativeWidth(0.035)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => kademeLink));
            },
            child: Container(
              height: getRelativeHeight(0.1),
              constraints: BoxConstraints(minWidth: getRelativeWidth(0.88)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getRelativeWidth(0.03)),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(getRelativeWidth(0.025)),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                kademefRenk!,
                                kademefRenk_2!,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          kategoriIcon!.icon,
                          color: Colors.white,
                          size: getRelativeWidth(0.075),
                        )),
                    SizedBox(width: getRelativeWidth(0.02)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          kademeAdi!,
                          style: TextStyle(
                              fontSize: getRelativeWidth(0.038),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: getRelativeHeight(0.005)),
                        Text(
                          sinifAdi! + '. sınıf',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.48),
                              fontSize: getRelativeWidth(0.03)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: getRelativeWidth(0.04))
        ],
      ),
    );
  }
}
