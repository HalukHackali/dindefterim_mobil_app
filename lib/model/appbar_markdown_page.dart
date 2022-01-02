import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:http/http.dart' as http;

class UniteIcerik extends StatelessWidget {
  final String unideninAdi;

  const UniteIcerik({
    Key? key,
    required this.unideninAdi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            unideninAdi,
            style: const TextStyle(fontSize: 15.0),
          ),
        ),
        body: Center(
          child: FutureBuilder(
              future: getTextData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  //HERE we need to add the text renderer
                  return Markdown(data: snapshot.data.toString());
                }
                return const Text("Veri Çekilemedi");
              }),
        ),
      ),
    );
  }
}

Future<String> getTextData() async {
  var url = Uri.parse(
      'https://raw.githubusercontent.com/mxstbr/markdown-test-file/master/TEST.md');
  var response = await http.get(url);
  return response.body;
}
