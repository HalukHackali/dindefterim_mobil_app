import 'package:dindefterim_sari/quiz/screens/main_menu.dart';
import 'package:dindefterim_sari/quiz/ui/shared/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Tebrikler",
              textAlign: TextAlign.center,
              style:  TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
          const Text(
            "Puanın",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}",
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 100.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppQuizTest(),
                  ));
            },
            shape: const StadiumBorder(),
            color: AppColor.secondaryColor,
            padding: const EdgeInsets.all(18.0),
            child: const Text(
              "Teste baştan başla",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
