import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_2/utils/sp_manager.dart';

class ApiController extends GetxController {
  RxMap<String, dynamic> userInfo = RxMap();

  void fetchUserInfo() async {
    SpManager sharedPreference = SpManager();
    await sharedPreference.init();
    String accessToken = await sharedPreference.getAccessToken();

    var url =
        Uri.parse('http://localhost:3000/profile/62f0791cf882a3a8944f28d5');
    try {
      var response = await http.get(url, headers: {
        "Content-Type": 'application/json',
        'Authorization': 'Bearer $accessToken',
      });
      var responseData = Map<String, dynamic>.from(jsonDecode(response.body));

      print("responseData: $responseData");
      userInfo.value = responseData;
    } catch (e) {
      print("exception: ${e.toString()}");
    }
  }
}
