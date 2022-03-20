import 'package:dongpakka_pomodoro/pages/setting/feedback_page.dart';
import 'package:dongpakka_pomodoro/pages/setting/info_page.dart';
import 'package:dongpakka_pomodoro/pages/setting/introduce_page.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Setting'),),
    body: ListView(
      children: [
        _CategorySeparator('개인 설정'),
        _divider,
        _gotoAnotherPage('개인 정보', InfoPage()),      // Get... 을 사용한다면...
        _divider,
        _gotoAnotherPage('추가 및 수정 요청', FeedbackPage()),
        _divider,
        //
        _logoutPage('log out'),
        _divider,
        //
        _CategorySeparator('우리 앱?'),
        _gotoAnotherPage('앱 소개', IntroPage()),
        _divider,
        _textBox('Version 1.0'),
      ],
    ),);
  }

  Container _gotoAnotherPage(String title, Widget widget) {
    return Container(
      color: Colors.white,
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => widget));
        },
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
        dense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        minVerticalPadding: 0,
      ),
    );
  }

}

Container _CategorySeparator(String title) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
      // color: Provider.of<AppState>(context).app_color,
    ),
    child: ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
      ),
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      minVerticalPadding: 0,
    ),
  );
}

Divider get _divider => Divider(
  thickness: 2,
  height: 0,
  color: Color(0xff003976),
);

Container _textBox(String title) {
  return Container(
    color: Colors.white,
    child: ListTile(
      onTap: null,
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black38),
      ),
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      minVerticalPadding: 0,
    ),
  );
}

Container _logoutPage(String title) {
  return Container(
    color: Colors.white,
    child: ListTile(
      onTap: () {
        // Provider.of<FirebaseAuthState>(context, listen: false).signOut();
        // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>StartScreen()));
      },
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
      ),
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      minVerticalPadding: 0,
    ),
  );
}
