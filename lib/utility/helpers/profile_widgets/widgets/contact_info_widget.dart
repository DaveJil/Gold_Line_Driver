import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ContactInfoWidget extends StatefulWidget {
  final String infoItem;
  final String infoDetails;
  final String additionalDetails;
  const ContactInfoWidget(
      {Key? key,
      required this.infoDetails,
      required this.infoItem,
      required this.additionalDetails})
      : super(key: key);

  @override
  State<ContactInfoWidget> createState() => _ContactInfoWidgetState();
}

class _ContactInfoWidgetState extends State<ContactInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.infoItem,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: kPrimaryGoldColor),
          ),
          RichText(
            text: TextSpan(
              text: widget.additionalDetails != ''
                  ? widget.infoDetails + ', '
                  : widget.infoDetails,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: widget.additionalDetails,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
