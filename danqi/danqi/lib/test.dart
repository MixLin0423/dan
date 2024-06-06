import 'dart:async';
import 'package:flutter/material.dart';



class time extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<time> {
  Timer? _timer;
  Stopwatch _stopwatch = Stopwatch();
  String _timeString = "00:00:00";

  void _startTimer() {
    setState(() {
      if (!_stopwatch.isRunning) {
        _stopwatch.start();
        _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
          _updateDisplayTime();
        });
      }
    });
  }

  void _stopTimer() {
    setState(() {
      if (_stopwatch.isRunning) {
        _stopwatch.stop();
        _timer?.cancel();
      }
    });
  }

  void _updateDisplayTime() {
    Duration elapsed = _stopwatch.elapsed;
    int hours = elapsed.inHours;
    int minutes = elapsed.inMinutes % 60;
    int seconds = elapsed.inSeconds % 60;
    int milliseconds = elapsed.inMilliseconds % 1000;

    // 仅当需要显示到毫秒级别且希望保留两位小数时，可以使用以下方式计算
    // 不过题目要求是00:00:00格式，所以这部分注释掉了
    // double decimalSeconds = milliseconds / 1000;
    // String formattedDecimalSeconds = decimalSeconds.toStringAsFixed(2).substring(1); // 去掉前导的0.

    _timeString = "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Precision Timer')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _timeString,
                style: TextStyle(fontSize: 48),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _startTimer,
                    child: Text('开始'),
                  ),
                  ElevatedButton(
                    onPressed: _stopTimer,
                    child: Text('结束'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}