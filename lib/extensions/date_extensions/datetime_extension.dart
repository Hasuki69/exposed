part of '../extensions.dart';

extension DateTimeExtension on DateTime {
  String format({String? formatModel}) => DateFormat(formatModel ?? 'yyyy/MM/dd').format(this);

  bool get isToday {
    final current = DateTime.now();
    return year == current.year && month == current.month && day == current.day;
  }

  bool get isYesterday {
    final current = DateTime.now();
    const oneDay = Duration(days: 1);
    return current.subtract(oneDay).isSameDate(this);
  }

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isSameMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  bool isSameYear(DateTime other) {
    return year == other.year;
  }

  bool get isLeapYear {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  }

  int get daysInMonth {
    if (month == 2) {
      return isLeapYear ? 29 : 28;
    } else if ([4, 6, 9, 11].contains(month)) {
      return 30;
    } else {
      return 31;
    }
  }
}
