import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ContactInfoWidgetRiderOnly extends StatefulWidget {
  final String infoItem;
  final int noOfRiders;
  const ContactInfoWidgetRiderOnly({
    Key? key,
    required this.noOfRiders,
    required this.infoItem,
  }) : super(key: key);

  @override
  State<ContactInfoWidgetRiderOnly> createState() =>
      _ContactInfoWidgetRiderOnlyState();
}

class _ContactInfoWidgetRiderOnlyState
    extends State<ContactInfoWidgetRiderOnly> {
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
              children: <TextSpan>[
                TextSpan(
                  text: "${widget.noOfRiders}",
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
