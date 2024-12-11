import 'dart:convert';
import 'dart:developer';

import 'package:gemini_chatbot_clone/screen/home_page/model/app_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<MainContentModel?> chatBot() async {
    String link =
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=AIzaSyAg-QaoMJtotlzesByFHl8cc31L-AhwqmE";

    Map<String, dynamic> m1 = {
      "contents": [
        {
          "parts": [
            {"text": "prime minister of india"}
          ]
        }
      ]
    };
    var res = await http.post(
      Uri.parse(link),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode(m1),
    );
    log('$m1');
    if (res.statusCode == 200) {
      var json = await jsonDecode(res.body);
      log('$json');

      MainContentModel mod = MainContentModel.mapToModel(json);

      return mod;
    }
    return null;
  }
}
