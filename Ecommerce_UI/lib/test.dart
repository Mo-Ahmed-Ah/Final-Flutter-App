import 'package:finalflutterapp/core/functions/checkinternet.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool? isInternetConnected;
  
  @override
  void initState() {
    super.initState();
    initialData();
  }

  initialData() async {
    isInternetConnected = await checkInternet();
    print(isInternetConnected);

    setState(() {}); // Refresh UI when value arrives
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: Center(
        child: Text(
          "Internet: $isInternetConnected",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}