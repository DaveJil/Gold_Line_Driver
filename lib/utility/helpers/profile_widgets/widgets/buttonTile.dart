import 'package:flutter/material.dart';

Widget ButtonTile(context, Size size, String heading, String description,
    IconData thisIcon, Widget screen) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 5,
          ),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey[300],
            child: Icon(
              thisIcon,
              color: Colors.black,
              size: 22,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: size.width / 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                //
                description != ''
                    ? Text(
                        description,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          )
        ],
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    ),
  );
}
