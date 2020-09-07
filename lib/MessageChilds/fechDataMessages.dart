import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mmtaz/HomePageChilds/HomePageModel.dart';
import 'package:mmtaz/MessageChilds/MessagesModel.dart';
import 'package:mmtaz/models/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class getChatsFromServer {
  static Future<Map> getchatsfromserver() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final response = await http.post(api.siteName + '/api/get_home',
        body: {"token": prefs.getString('myIp_token')});
    print(response.statusCode);

    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      List<getMessagesFromServer> getchatsfs = [];
      responseBody['chats'].forEach((item) {
        getchatsfs.add(getMessagesFromServer.fromJson(item));
      });
      return {
        "chats": getchatsfs,
      };
    }
  }
}
