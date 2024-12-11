import 'package:flutter/material.dart';
import 'package:gemini_chatbot_clone/screen/home_page/provider/home_provider.dart';
import 'package:gemini_chatbot_clone/screen/home_page/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomeProvider()),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
