
import 'package:dongpakka_pomodoro/pages/home_page.dart';
import 'package:dongpakka_pomodoro/pages/setting/feedback_page.dart';
import 'package:dongpakka_pomodoro/pages/setting/info_page.dart';
import 'package:dongpakka_pomodoro/pages/setting/introduce_page.dart';
import 'package:dongpakka_pomodoro/widgets/pomodoro_timer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'models/task.dart';
import 'pages/task_page.dart';

void main() {
  runApp(
      MaterialApp(
          theme: ThemeData(
          brightness: Brightness.light,
          /* light theme settings */
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          /* dark theme settings */
        ),
        themeMode: ThemeMode.dark,



        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/schedulePage': (context) => TaskPage(),
          // '/setting/feedbackPage': (context)=> FeedbackPage(),      // 아직 무슨화면을 넣을지 몰라 보류..
          // '/setting/infoPage': (context)=> InfoPage(),
          // '/setting/introduce': (context)=> IntroducePage(),
        },

    )
  );
}
