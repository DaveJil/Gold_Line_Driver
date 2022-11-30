import 'package:flutter/material.dart';
import 'package:gold_line_driver/utility/helpers/constants.dart';

class DriverAppBar extends StatefulWidget {
  const DriverAppBar({Key? key}) : super(key: key);

  @override
  State<DriverAppBar> createState() => _DriverAppBarState();
}

class _DriverAppBarState extends State<DriverAppBar> {
  int numberOfTrips = 0;
  int dailyEarnings = 0;
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget buildAppBar() {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Container(
        color: kPrimaryGoldColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [const Text("Today's Trips"), Text("$numberOfTrips")],
              ),
              buildOnLineToggle(),
              Column(
                children: [
                  const Text("Today's Earnings"),
                  Text("$dailyEarnings")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOnLineToggle() {
    return Row(
      children: [
        const Text(
          "Offline",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Transform.scale(
          scale: 2,
          child: Switch.adaptive(
              activeColor: Colors.greenAccent,
              value: value,
              onChanged: (value) {
                setState(() {
                  this.value = value;
                });
              }),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "Offline",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
