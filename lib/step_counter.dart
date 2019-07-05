import 'dart:async';

import 'package:flutter/services.dart';

class StepCounter {
  static const MethodChannel _channel =
      const MethodChannel('step_counter');

  static Future<String> authenticateUser() async {
    final String status = await _channel.invokeMethod('authenticateUser');
    return status;
  }

  static Future<String> getStepsInIntervals(int startTime, int endTime, int interval) async {
    final String stepsInIntervals = await _channel.invokeMethod('getStepsInIntervals', {'startTime' : startTime, 'endTime' : endTime, 'interval' : interval});
    return stepsInIntervals;
  }

  static Future<String> getStepsDuringTime(int startTime, int endTime) async {
    final String stepsDuringTime = await _channel.invokeMethod('getStepsDuringTime');
    return stepsDuringTime;
  }

  static Future<String> getStepsToday() async {
    final String stepsToday = await _channel.invokeMethod('getStepsToday');
    return stepsToday;
  }
}
