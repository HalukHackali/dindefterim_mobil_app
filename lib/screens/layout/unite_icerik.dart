import 'package:dindefterim_sari/core/constants.dart';
import 'package:dindefterim_sari/core/size_confige.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart';

class UniteIcerik extends StatelessWidget {
  final String unideninAdi;
  final Widget mdLinkF;

  const UniteIcerik({
    Key? key,
    required this.unideninAdi,
    required this.mdLinkF,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: kHardTextColor,
          ),
          backgroundColor: const Color(0xff77E2FE),
          title: Text(
            unideninAdi,
            style: TextStyle(
              color: kHardTextColor,
              fontWeight: FontWeight.bold,
              //fontSize: getRelativeWidth(0.061),
              fontSize: UIHelper.getSiniflarTitleHeight() * 0.8,
            ),
          ),
        ),
        body: mdLinkF,
      ),
    );
  }
}

class UniteIcerikMarkDown extends StatelessWidget {
  final String mdLink;
  const UniteIcerikMarkDown({Key? key, required this.mdLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString(mdLink),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data.toString(),
              styleSheet: MarkdownStyleSheet(
                h1: const TextStyle(
                  color: Color(0xff586191),
                  //color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
                h2: const TextStyle(
                  color: Color(0xff8d288c),
                  //color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                h3: const TextStyle(
                  color: Color(0xff11a2bf),
                  //color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                p: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
