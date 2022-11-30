// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../utility/helpers/constants.dart';
// import '../../utility/helpers/custom_button.dart';
//
// String accountHolderName = 'Esther Ogaranya',
//     earningString = "162,250",
//     phoneNumber = '+234 81 234 6789',
//     email = 'support@safedrop.com',
//     carModel = 'Toyota Camry',
//     carPlateNumber = 'AB-215D34';
// double rating = 4.9, yearsActive = 2.5;
// int totalTrips = 1534, totalEarnings = 162250;
//
// class DriverProfileScreen extends StatefulWidget {
//   static const String iD = '/profileScreen';
//
//   const DriverProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DriverProfileScreen> createState() => _DriverProfileScreenState();
// }
//
// class _DriverProfileScreenState extends State<DriverProfileScreen> {
//   DriverProfile _profile = DriverProfile();
//
//   void setProfile(BuildContext context) async {
//     _profile = await context.read<DriverProvider>().getDriverProfile(context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // setProfile(context);
//     Size size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       body: FutureBuilder<DriverProfile>(
//         future: context.read<DriverProvider>().getDriverProfile(context),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             final data = snapshot.data;
//             return SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Stack(
//                     children: [
//                       ClipPath(
//                         clipper: CustomBackgroundClipper(),
//                         child: Container(
//                           color: kPrimaryGoldColor,
//                           height: (size.height / 4) + 250,
//                         ),
//                       ),
//                       Positioned(
//                         right: size.width / 28,
//                         child: IconButton(
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.settings,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: size.height / 25,
//                         left: size.width / 35,
//                         child: Row(
//                           children: [
//                             IconButton(
//                               onPressed: () {},
//                               icon: const Icon(
//                                 CupertinoIcons.chevron_back,
//                                 color: Colors.white,
//                                 size: 25,
//                               ),
//                             ),
//                             const Text(
//                               "MY ACCOUNT",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                                 color: Colors.white,
//                                 letterSpacing: 1.2,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Positioned(
//                         top: size.height / 9,
//                         left: size.width / 3,
//                         child: InkWell(
//                           onTap: () {
//                             // Show full profile picture
//                           },
//                           child: CircleAvatar(
//                             radius: size.width / 6,
//                             backgroundColor: Colors.blueGrey.withOpacity(0),
//                             child: const Image(
//                               image:
//                                   AssetImage("assets/images/profile_pic.png"),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         top: size.height / 4,
//                         child: SizedBox(
//                           width: size.width,
//                           height: size.height,
//                           child: Column(
//                             children: [
//                               const Spacer0(),
//                               Center(
//                                 child: Text(
//                                   data!.profile!.firstName!,
//                                   style: const TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               const Spacer0(),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   const Icon(
//                                     Icons.star_rounded,
//                                     color: Color.fromRGBO(199, 163, 23, 1),
//                                     size: 25,
//                                   ),
//                                   Text(
//                                     data.rating!.toString(),
//                                     style: const TextStyle(
//                                       color: Color.fromRGBO(199, 163, 23, 1),
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const Spacer0(),
//                               FaintLne(size),
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: size.width / 14, vertical: 8),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     SummaryWidget(
//                                       heading: 'Total trips:',
//                                       value: "$totalTrips",
//                                     ),
//                                     SummaryWidget(
//                                       heading: 'Earnings:',
//                                       value: '₦' + earningString,
//                                     ),
//                                     SummaryWidget(
//                                       heading: 'Years:',
//                                       value: "$yearsActive",
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               FaintLne(size),
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: size.width / 14, vertical: 8),
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     ContactInfoWidget(
//                                       infoItem: 'Phone:',
//                                       infoDetails: phoneNumber,
//                                       additionalDetails: data.phone!,
//                                     ),
//                                     ContactInfoWidget(
//                                       infoItem: 'Email:',
//                                       infoDetails: email,
//                                       additionalDetails: data.email!,
//                                     ),
//                                     ContactInfoWidget(
//                                       infoItem: 'Car:',
//                                       infoDetails: carModel,
//                                       additionalDetails:
//                                           '${data.rideType},${data.profile!.plateNumber}',
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   FaintLne(size),
//                   Container(
//                     padding: EdgeInsets.symmetric(
//                         vertical: 10, horizontal: size.width / 12),
//                     width: size.width,
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             CustomButton(
//                               onPressed: () {
//                                 //Log Out
//                               },
//                               text: "Log Out",
//                               color: kPrimaryGoldColor,
//                               elevation: 5,
//                             ),
//                             CustomButton(
//                               onPressed: () {
//                                 //Delete Account
//                               },
//                               text: "Delete Account",
//                               elevation: 5,
//                               color: const Color.fromARGB(255, 182, 35, 25),
//                             ),
//                           ],
//                         ),
//                         const Spacer0(),
//                         ButtonTile(
//                             context,
//                             size,
//                             'Vehicles',
//                             data.rideType,
//                             CupertinoIcons.car_detailed,
//                             Scaffold(
//                               appBar:
//                                   AppBar(title: const Text("Vehicles Page")),
//                             )),
//                         ButtonTile(
//                             context,
//                             size,
//                             'Payments',
//                             '',
//                             CupertinoIcons.creditcard,
//                             Scaffold(
//                               appBar:
//                                   AppBar(title: const Text("Payments Page")),
//                             )),
//                         ButtonTile(
//                             context,
//                             size,
//                             'Referrals',
//                             '',
//                             Icons.person_add_alt,
//                             Scaffold(
//                               appBar:
//                                   AppBar(title: const Text("Referrals Page")),
//                             )),
//                         ButtonTile(
//                           context,
//                           size,
//                           'Support',
//                           '',
//                           Icons.help,
//                           Scaffold(
//                             appBar: AppBar(title: const Text("Support Page")),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           } else if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             return const Center(
//               child: Text(
//                 'Error Occurred check internet connection',
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
//
// Widget FaintLne(size) {
//   return Container(
//     margin: const EdgeInsets.only(top: 3),
//     width: size.width,
//     height: 1,
//     color: const Color.fromARGB(255, 215, 223, 228),
//   );
// }
//
// class CustomBackgroundClipper extends CustomClipper<Path> {
//   @override
//   getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, (size.height - 250) * 0.6);
//     var firstControlPoint = Offset(size.width / 2, (size.height - 250));
//     var firstEndPoint = Offset(size.width, (size.height - 250) * 0.7);
//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);
//
//     path.lineTo(size.width, size.height * 0.99);
//     path.lineTo(size.width, 0.0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper oldClipper) {
//     return false;
//   }
// }
