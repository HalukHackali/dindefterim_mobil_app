import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart';

class UniteIcerik extends StatelessWidget {
  final String unideninAdi;
  final Widget mdLinkF;

  const UniteIcerik({
    Key? key,
    required this.unideninAdi, required this.mdLinkF,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent[700],
          title: Text(
            unideninAdi,
            style: const TextStyle(fontSize: 15.0),
          ),
        ),
        body: mdLinkF,
      ),
    );
  }
}

class UniteIcerikMarkDown extends StatelessWidget {
  final String mdLink;
  const UniteIcerikMarkDown({Key? key,  required this.mdLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: rootBundle.loadString(mdLink),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Markdown(data: snapshot.data.toString(),
              styleSheet: MarkdownStyleSheet(
                  h1: const TextStyle(color: Colors.indigo,)
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
