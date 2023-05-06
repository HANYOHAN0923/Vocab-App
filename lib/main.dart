import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:vocab_app/screens/homescreen_test.dart';

void main() {
  KakaoSdk.init(nativeAppKey: "25a57ebdf2c865c94f140560fbdddb8c");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xff9496c1),
            background: Colors.white,
            secondary: const Color(0xff272e81),
            error: const Color(0xffDB4455)),
      ),
      home: const HomeScreenTest(),
    );
  }
}
