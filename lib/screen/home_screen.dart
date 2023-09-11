import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/data_provider.dart';
import 'package:flutter_application_1/widgets/nav_drawer.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<DataProvider>(context, listen: false).getPostData(context);
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text('HomeScreen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'listUser');
            },
            icon: const Icon(Icons.check_circle),
          ),
        ],
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu),
          ),
        ),
      ),
      body: const Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
