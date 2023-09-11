import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/data_model.dart';
import 'package:flutter_application_1/services/list_service.dart';

class DataProvider with ChangeNotifier {
  late DataModel data;

  bool loading = false;
  Services services = Services();

  getPostData(context) async {
    loading = true;
    data = await services.getData(context);
    loading = false;

    notifyListeners();
  }
}
