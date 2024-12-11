import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gemini_chatbot_clone/screen/home_page/model/app_model.dart';
import 'package:gemini_chatbot_clone/utils/helper/api_helper.dart';

class HomeProvider with ChangeNotifier {
  List<PartsModel> textsOutput = [];
  Future<void> getChats() async {
    ApiHelper helper = ApiHelper();
    MainContentModel? mainContentModel = await helper.chatBot();
    textsOutput = mainContentModel!.partList!;
    log('call');
  }
}
