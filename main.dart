import 'package:flash_chat/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

import 'screens/login_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:WelcomeScreen.id,
      routes: {
        '/': (BuildContext context) => SplashScreen(),
        WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
        RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        ChatScreen.id: (BuildContext context) => ChatScreen(),

      },
    );
  }
}
