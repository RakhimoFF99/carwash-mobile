import 'dart:convert';

import 'package:get/get.dart';
import 'package:carwash/Constants.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  var wash = [].obs;
  var user = {}.obs;

  @override
  void onInit() {
    super.onInit();
    getAllWash();
    getUserData();
  }

  Future getAllWash() async {
    http.Response response = await http.get(Uri.parse("$Url/wash/all"));
    var data = jsonDecode(response.body);
    wash.value = data;
  }
  Future findWashByLetter (String letter) async{
    http.Response  response = await http.get(Uri.parse("$Url/wash/find/$letter"));
    var data = await jsonDecode(response.body);
    print(data);
    wash.value = data;
  }
  Future getUserData () async{
      http.Response response = await http.get(Uri.parse("$Url/get/user/me"),headers: {
        "auth-token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNjJkZTk0Y2I1ZjcyM2U1M2QwOThmZSIsInJvbGUiOiJhZG1pbiIsImlhdCI6MTYzNDEyNTcwNX0.QD7vL3Wf7vKhIw3G2z_lO5nj1TltNLSevtjpuXm6UxU"
      } );
      var userData = jsonDecode(response.body);
      user.value = userData;
  }
}
