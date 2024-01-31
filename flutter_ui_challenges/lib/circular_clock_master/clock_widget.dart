import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/circular_clock_master/time_circle.dart';
import 'package:flutter_ui_challenges/circular_clock_master/utils.dart';

import 'indicator_painter.dart';


/// A widget that maintains and shows the main clock with information based on [date]
///
/// The days information are surrounded by a circle drawn with [CustomPainter]
class ClockWidget extends StatelessWidget {
  /// Create a const [ClockWidget].
  ///
  ///
  const ClockWidget({
    required this.height,
    required this.width,
    required this.date,
    required this.gradient,
    required this.model,
    required this.textColor,
    required this.indicatorsColor,
  });

  /// The vertical diameter of the circle.
  final double height;

  /// The horizontal diameter of the circle.
  final double width;

  /// The [DateTime] object, which is used.
  final DateTime date;

  /// Additional information about weather, temperature, location.
  final ClockModel model;

  /// The [LinearGradient], that is used to colorize the circle.
  final LinearGradient gradient;

  /// The [Color] of the clock indicators
  final Color indicatorsColor;

  /// [Color] for text elements in this widget
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final isPm = date.hour > 12;

    String hourString = "";
    String hourIndicator = "";

    // Prepare the hours based on the HourFormat.
    if (model.is24HourFormat) {
      hourString = date.hour.toString();
    } else {
      if (isPm) {
        hourString = (date.hour - 12).toString();
        hourIndicator = "pm";
      } else {
        hourString = date.hour.toString();
        hourIndicator = "am";
      }
    }

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              hourString,
              style: TextStyle(fontSize: 140, fontWeight: FontWeight.w200),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                hourIndicator,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 245,
          child: Text(
            model.low.toString() + " - " + model.temperatureString,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ),
        CustomPaint(
          painter: IndicatorPainter(
            circleExpand: radiansPerTick * date.minute,
            color: indicatorsColor,
          ),
          size: Size(width, height),
        ),
        TimeCircle(
          height: height,
          width: width,
          gradient: gradient,
          value: radiansPerTick * date.minute,
          textColor: textColor,
          text: date.minute.toString(),
        )
      ],
    );
  }
}


