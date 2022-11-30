import 'package:flutter/material.dart';

class SummaryWidget extends StatefulWidget {
  final String heading;
  String value;

  SummaryWidget({
    Key? key,
    required this.heading,
    required this.value,
  }) : super(key: key);

  @override
  State<SummaryWidget> createState() => _SummaryWidgetState();
}

class _SummaryWidgetState extends State<SummaryWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.heading,
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey[400]),
        ),
        Text(
          widget.value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    ));
  }
}
