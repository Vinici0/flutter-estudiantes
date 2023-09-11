import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/data_provider.dart';
import 'package:provider/provider.dart';

class ListUserScreen extends StatelessWidget {
  static const routeName = 'listUser';
  const ListUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('ListUserScreen'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: postMdl.loading
            ? Center(
                child: Container(
                  child: const CircularProgressIndicator(),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 20),
                    child: Text(
                      postMdl.data.name ?? "",
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Container(
                    child: Text(
                      postMdl.data.body ?? "",
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
