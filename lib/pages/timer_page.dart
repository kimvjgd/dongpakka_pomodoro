import 'package:dongpakka_pomodoro/models/task.dart';
import 'package:dongpakka_pomodoro/pages/home_page.dart';
import 'package:dongpakka_pomodoro/widgets/pomodoro_timer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);
  static List<Task> taskList = [
    Task(
        id: 0,
        title: "수학",
        note: "1",
        date:  DateFormat.yMd().format(DateTime.now()),
        startTime: DateFormat('hh:mm a').format(DateTime.now()),
        endTime: DateFormat('hh:mm a').format(DateTime.now().add(Duration(minutes: 15))),
        color: 0,
        isCompleted: 0
    ),
    Task(
        id: 1,
        title: "영어",
        note: "1",
        date:  DateFormat.yMd().format(DateTime.now()),
        startTime: DateFormat('hh:mm a').format(DateTime.now()),
        endTime: DateFormat('hh:mm a').format(DateTime.now().add(Duration(minutes: 15))),
        color: 0,
        isCompleted: 0),
    Task(
        id: 1,
        title: "영어",
        note: "1",
        date:  DateFormat.yMd().format(DateTime.now()),
        startTime: DateFormat('hh:mm a').format(DateTime.now()),
        endTime: DateFormat('hh:mm a').format(DateTime.now().add(Duration(minutes: 15))),
        color: 0,
        isCompleted: 0),
    Task(
        id: 1,
        title: "영어",
        note: "1",
        date:  DateFormat.yMd().format(DateTime.now()),
        startTime: DateFormat('hh:mm a').format(DateTime.now()),
        endTime: DateFormat('hh:mm a').format(DateTime.now().add(Duration(minutes: 15))),
        color: 0,
        isCompleted: 0),
    Task(
        id: 1,
        title: "영어",
        note: "1",
        date:  DateFormat.yMd().format(DateTime.now()),
        startTime: DateFormat('hh:mm a').format(DateTime.now()),
        endTime: DateFormat('hh:mm a').format(DateTime.now().add(Duration(minutes: 15))),
        color: 0,
        isCompleted: 0),
  ];

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {

  List<Widget> taskWidgetList = [];

  @override
  void initState() {
    // TODO: implement initState
    for( Task i in TimerPage.taskList){
      taskWidgetList.add(
        Card(
            child: ListTile(
                title: Text("1교시"),
                subtitle: Text(i.title!),
                trailing: Text('10%')
            )
        ),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pomodoro'),
        ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                child: Center(
                  child: PomodoroTimer(),
                )
            ),
            Expanded(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  children: taskWidgetList
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Transform.scale(        // 밑에 play 위젯
        scale: 1.5,
        child: FloatingActionButton(
          child: Row(
            children: [
              Icon(Icons.play_arrow,color: Colors.white70,),
              Text('Play',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600,
                  fontSize: 12),),
            ],
          ),
          onPressed: () {
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
