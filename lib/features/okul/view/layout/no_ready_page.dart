import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoReadyPage extends StatefulWidget {
  const NoReadyPage({
    Key? key,
  }) : super(key: key);

  @override
  State<NoReadyPage> createState() => _NoReadyPageState();
}

class _NoReadyPageState extends State<NoReadyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 120.0, right: 18, left: 18),
              child: NoReadyCardWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  elevation: 7.0,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  <Widget>[
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: const [
                             Icon(Icons.subdirectory_arrow_left_sharp, size: 45,),
                             Text(
                               "Geri Dön ",
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: 28.0,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.black),
                             ),
                           ],
                         ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.orange,
                          Colors.deepOrange,
                        ],
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.width * 0.2,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NoReadyCardWidget extends StatelessWidget {
  const NoReadyCardWidget({
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
                          image: AssetImage("assets/widgets_images/img_settings.png"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "SAYFA HAZIRLANIYOR",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "En kısa sürede sayfa kullanıma açılacak",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
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
        height: 180.0,
      ),
    );
  }
}
