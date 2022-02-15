import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/logo.png'),
                          height: 300.0,
                        ),
                        SizedBox(
                          height: 100.0,
                          child: WavyAnimatedTextKit(
                            text: ['Flash Chat'],
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 45.0,
                              fontWeight: FontWeight.w900,
                            ),
                            speed: Duration(milliseconds: 600),
                            isRepeatingAnimation: false,
                          ),
                        ),
                      ]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        backgroundColor: Colors.yellow,
                      ),
                      Text('A Group Chat App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
