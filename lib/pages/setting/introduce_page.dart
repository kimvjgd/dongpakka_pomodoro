import 'package:dongpakka_pomodoro/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';
import 'package:intro_slider/slide_object.dart';


class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  IntroPageState createState() => new IntroPageState();
}

// ------------------ Custom config ------------------
class IntroPageState extends State<IntroPage> {

  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slide("앱 소개",
        """
Pomodoro 앱 ~~
어쩌구 저쩌구
간단한 앱소개        
        """);
    slide("라이센", "~~~~ 썼고 정책에 위반 ㄴ");
    slide("개발자 소개", "누구눅누구누구누구누구누구누군");
  }

  void slide(String title, String content) {
    slides.add(
      new Slide(
        backgroundColor: Colors.black26,

        title:
        title,
        maxLineTitle: 2,
        styleTitle: TextStyle(
            color: Color(0xff7FFFD4),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'DonghyunKo'),
        description:content,


        styleDescription: TextStyle(
            color: Color(0xff7FFFD4),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
          // fontfamily는 추후 결정
            ),
        marginDescription:
        EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
        centerWidget: Text("",
            style: TextStyle(color: Colors.white)),
        // backgroundImage: "", 저작권 주의
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
      ),
    );
  }

  void onDonePress() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingPage()));
    // Do what you want
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => HomeScreen()),
    // );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffF3B4BA),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffF3B4BA),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffF3B4BA),
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0x33F3B4BA)),
      overlayColor: MaterialStateProperty.all<Color>(Color(0x33FFA8B0)),
    );
  }

  @override
  Widget build(BuildContext context) {

    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      skipButtonStyle: myButtonStyle(),

      // Next button
      renderNextBtn: this.renderNextBtn(),
      nextButtonStyle: myButtonStyle(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      doneButtonStyle: myButtonStyle(),

      // Dot indicator
      colorDot: Color(0x33FFA8B0),
      colorActiveDot: Color(0xffFFA8B0),
      sizeDot: 13.0,

      // Show or hide status bar
      hideStatusBar: true,
      backgroundColorAllSlides: Colors.grey,

      // Scrollbar
      verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
    );
  }
}