import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? text;

  String? url;

  void kakaoLogin() async {
    if (await isKakaoTalkInstalled()) {
      try {
        await UserApi.instance.loginWithKakaoTalk();
      } catch (error) {
        if (error is PlatformException && error.code == 'CANCELED') {
          return;
        }
        try {
          await UserApi.instance.loginWithKakaoAccount();
        } catch (error) {
          return;
        }
      }
    } else {
      try {
        await UserApi.instance.loginWithKakaoAccount();
        print('카카오계정으로 로그인 성공');
      } catch (error) {
        print('카카오계정으로 로그인 실패 $error');
      }
    }
  }

  void _get_user_info() async {
    try {
      User user = await UserApi.instance.me();
      /*
        'id': user.id,
        'nickname': user.kakaoAccount?.profile?.nickname,
        'profileImageUrl': user.kakaoAccount?.profile?.profileImageUrl,
        */
      setState(() {
        text = user.kakaoAccount?.profile?.nickname;
        url = user.kakaoAccount?.profile?.profileImageUrl;
      });
    } catch (error) {
      print('사용자 정보 요청 실패 $error');
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        height: 300,
        child: Column(children: [
          text == null ? const Text("None") : Text(text!),
          url == null ? const Text("None") : Image.network(url!),
          TextButton(
              onPressed: () async {
                kakaoLogin();
                _get_user_info();
              },
              child: const Text("Kakao Login")),
        ]),
      )),
    );
  }
}
