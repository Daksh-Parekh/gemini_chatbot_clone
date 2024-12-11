import 'package:flutter/material.dart';
import 'package:gemini_chatbot_clone/main.dart';
import 'package:gemini_chatbot_clone/screen/home_page/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<HomeProvider>().getChats();
            },
            icon: Icon(Icons.chat),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.black.withOpacity(0.1),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text("${context.watch<HomeProvider>().textsOutput.length}"),
                    Expanded(
                      child: ListView.builder(
                        itemCount:
                            context.watch<HomeProvider>().textsOutput.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Text(
                              "${context.watch<HomeProvider>().textsOutput[index].text}"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
