import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'constants.dart';

class CustomDatePicker extends StatelessWidget {
  final String date;
  final Function(String) onDatePressed;

  const CustomDatePicker(
      {Key? key, required this.date, required this.onDatePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(5);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                getSelectDateSting(date),
              ),
            ),
            const SizedBox(
              width: kDefaultMargin / 4,
            ),
            InkWell(
              onTap: () => pickDate(context),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: radius,
                        bottomLeft: radius,
                        bottomRight: radius),
                    border: Border.all(color: kSecondaryColor, width: 2)),
                child: const Text(
                  'Pick Date',
                ),
                padding: const EdgeInsets.all(kDefaultPadding / 4),
              ),
            )
          ],
        ),
      ],
    );
  }

  void pickDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate:
          date.isEmpty ? DateTime.now() : getDateTimeFromTimestamp(date),
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null) {
      onDatePressed(selected.millisecondsSinceEpoch.toString());
    }
  }

  void incrementDate(BuildContext context) {
    if (date.isNotEmpty) {
      try {
        final d = int.parse(date.trim());
        onDatePressed((d + 10).toString());
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Date is empty')));
    }
  }

  void decrementDate(BuildContext context) {
    if (date.isNotEmpty) {
      try {
        final d = int.parse(date.trim());
        onDatePressed((d - 10).toString());
      } catch (e) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Date is empty')));
    }
  }

  String getSelectDateSting(String timestamp) {
    if (timestamp.isEmpty) {
      return 'Please select date';
    } else {
      try {
        var dateTime =
            DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
        return DateFormat('MMM dd, yyyy ($timestamp)').format(dateTime);
      } catch (exception) {
        return "";
      }
    }
  }
}

String getFormattedDate(String timestamp) {
  try {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
    return DateFormat('MMM dd, yyyy').format(dateTime);
  } catch (exception) {
    return "";
  }
}

DateTime getDateTimeFromTimestamp(String timestamp) {
  try {
    return DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
  } catch (exception) {
    return DateTime.now();
  }
}

String getDetailedFormattedDate(String timestamp) {
  try {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    if (today.day == dateTime.day &&
        today.month == dateTime.month &&
        today.year == dateTime.year) {
      return DateFormat('h:mm a').format(dateTime);
    } else {
      return DateFormat('MMM dd, yyyy').format(dateTime);
    }
  } catch (exception) {
    return "";
  }
}

String getMonthFromTimestamp(String timestamp) {
  try {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
    return DateFormat('MMMM').format(dateTime);
  } catch (exception) {
    return "January";
  }
}

String getYearFromTimestamp(String timestamp) {
  try {
    var dateTime = DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));
    return DateFormat('yyyy').format(dateTime);
  } catch (exception) {
    return DateTime.now().year.toString();
  }
}

String getFullDate(String d, String m, String year) {
  try {
    final day = (d.length == 1) ? ("0" + d.trim()) : d;
    final month = (m.length == 1) ? ("0" + m.trim()) : m;

    var dateTime = DateTime.parse("$year-$month-$day");
    return DateFormat('MMMM dd, yyyy').format(dateTime);
  } catch (exception) {
    return '';
  }
}
