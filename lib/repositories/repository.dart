import 'package:connectivity/connectivity.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:ziggy/model/commonmodel.dart';
import 'package:ziggy/webclient.dart';



class Repository {
  Future<CommonModel> checkPhoneNumber(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final CommonModel userModel = CommonModel.fromJson(response);
    return userModel;
  }

  Future<CommonModel> signup({required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final CommonModel userModel = CommonModel.fromJson(response);
    return userModel;
  }


}
