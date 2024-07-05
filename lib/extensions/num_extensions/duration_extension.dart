part of '../extensions.dart';

extension DurationExtension on num {
  Duration get days {
    return Duration(hours: (this * Duration.hoursPerDay).round());
  }

  Duration get hours {
    return Duration(minutes: (this * Duration.minutesPerHour).round());
  }

  Duration get minutes {
    return Duration(seconds: (this * Duration.secondsPerMinute).round());
  }

  Duration get seconds {
    return Duration(milliseconds: (this * 1000).round());
  }

  Duration get milliseconds {
    return Duration(microseconds: (this * 1000).round());
  }

  Duration get microseconds {
    return Duration(microseconds: round());
  }
}
