import 'package:e203_chat_yes_no/config/theme/app_theme.dart';
import 'package:e203_chat_yes_no/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Si-No App',
      theme: AppTheme(selectedColor: 1).theme(),
      home: ChatScreen()
    );
  }
}
