import 'package:flutter/material.dart';

import '../size_confige.dart';

class UserAppBar extends StatelessWidget {
   const UserAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getRelativeWidth(0.04)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Merhaba, Kullanıcı",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: getRelativeWidth(0.07)),
              ),
              SizedBox(height: getRelativeHeight(0.003)),
              Text(
                "Kullanıcı Menüsüne Hoşgeldin",
                style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: getRelativeWidth(0.036)),
              ),
            ],
          ),
          Container(
            height: getRelativeHeight(0.06),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    offset: Offset(0, 4),
                    color: Colors.black54,
                  )
                ],
                color: const Color(0xffA295FD),
                borderRadius: BorderRadius.circular(5)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset("assets/images/person.png")),
          )
        ],
      ),
    );
  }
}
