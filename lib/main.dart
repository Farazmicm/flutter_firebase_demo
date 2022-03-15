import 'package:flutter/material.dart';
import 'package:flutter_firebase_demo/message_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final oUrl = "https://flutterdatabase-45d33-default-rtdb.firebaseio.com/";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RayChat',
      theme: ThemeData(primaryColor: Color(0xFF3D814A)),
      home: MessageList(),
    );
  }
}