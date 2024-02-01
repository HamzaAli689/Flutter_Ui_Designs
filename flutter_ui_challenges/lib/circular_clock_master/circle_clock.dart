import 'dart:async';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:intl/intl.dart';
import 'clock_widget.dart';
import 'date_widget.dart';

class CircleClock extends StatefulWidget {
  const CircleClock(this.model);

  final ClockModel model;

  @override
  _CircleClockState createState() => _CircleClockState();
}

class _CircleClockState extends State<CircleClock> {
  late DateTime _now;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _now = DateTime.now();
    _updateTime();
  }

  @override
  void didUpdateWidget(CircleClock oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _updateTime() {
    setState(() {
      // Update once per second. Make sure to do it at the beginning of each
      // new second, so that the clock is accurate.
      _timer = Timer(
        Duration(seconds: 1) - Duration(milliseconds: _now.millisecond),
        _updateTime,
      );
      _now = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).brightness == Brightness.light
        ? Theme.of(context).copyWith(
      canvasColor: Color(0xff757575),
    )
        : Theme.of(context).copyWith(
      canvasColor: Color(0xff8a8a8a),
    );

    final time = DateFormat.Hms().format(_now);

    return Semantics.fromProperties(
      properties: SemanticsProperties(
        label: 'Circle clock with time $time',
        value: time,
      ),
      child: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ClockWidget(
                date: _now,
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const <Color>[
                    Color(0xff2196F3),
                    Color(0xffE91E63),
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.height * 0.5,
                model: widget.model,
                indicatorsColor: theme.canvasColor,
                textColor: Colors.amberAccent, // Updated
              ),
              DateWidget(
                date: _now,
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.height * 0.25,
                textColor: Colors.white, // Updated
                circleColor: theme.canvasColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
