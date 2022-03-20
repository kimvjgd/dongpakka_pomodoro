
import 'package:dongpakka_pomodoro/pages/home_page.dart';
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
        },

    )
  );
}
