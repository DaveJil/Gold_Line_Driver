// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../services/calls_and_sms.dart';
// import '../constants.dart';
//
// class UserBottomSheet extends StatelessWidget {
//   final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
//
//   UserBottomSheet({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // MapProvider mapProvider = Provider.of<MapProvider>(context);
//
//     return DraggableScrollableSheet(
//         initialChildSize: 0.1,
//         minChildSize: 0.05,
//         maxChildSize: 0.6,
//         builder: (BuildContext context, myScrollController) {
//           return Container(
//             decoration: BoxDecoration(color: Colors.white,
// //                        borderRadius: BorderRadius.only(
// //                            topLeft: Radius.circular(20),
// //                            topRight: Radius.circular(20)),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey.withOpacity(.8),
//                       offset: const Offset(3, 2),
//                       blurRadius: 7)
//                 ]),
//             child: ListView(
//               controller: myScrollController,
//               children: [
//                 const SizedBox(height: 12),
//                 ListTile(
//                   leading: Container(
//                     child: mapProvider.userModel?.phone == null
//                         ? const CircleAvatar(
//                             radius: 30,
//                             child: Icon(
//                               Icons.person_outline,
//                               size: 25,
//                             ),
//                           )
//                         : CircleAvatar(
//                             radius: 30,
//                             backgroundImage:
//                                 NetworkImage(mapProvider.userModel!.photo!),
//                           ),
//                   ),
//                   title: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       RichText(
//                           text: TextSpan(children: [
//                         TextSpan(
//                             text: mapProvider.userModel!.first_name! + "\n",
//                             style: const TextStyle(
//                                 fontSize: 17, fontWeight: FontWeight.bold)),
//                         TextSpan(
//                             text: mapProvider.rideRequestModel?.destination,
//                             style: const TextStyle(
//                                 fontSize: 14, fontWeight: FontWeight.w300)),
//                       ], style: const TextStyle(color: Colors.black))),
//                     ],
//                   ),
//                   trailing: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.green.withOpacity(0.3),
//                           borderRadius: BorderRadius.circular(20)),
//                       child: IconButton(
//                         onPressed: () {
//                           _service.call(mapProvider.userModel!.phone!);
//                         },
//                         icon: const Icon(Icons.call),
//                       )),
//                 ),
//                 const Divider(),
//                 const Padding(
//                   padding: EdgeInsets.all(12),
//                   child: Text(
//                     "Ride details",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       height: 100,
//                       width: 10,
//                       child: Column(
//                         children: [
//                           const Icon(
//                             Icons.location_on,
//                             color: Colors.grey,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 9),
//                             child: Container(
//                               height: 45,
//                               width: 2,
//                               color: kPrimaryBlueColor,
//                             ),
//                           ),
//                           const Icon(Icons.flag),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 30,
//                     ),
//                     RichText(
//                         text: TextSpan(children: [
//                       const TextSpan(
//                           text: "\nPick up location \n",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 16)),
//                       TextSpan(
//                           text:
//                               "${mapProvider.rideRequestModel?.location}\n\n\n" ??
//                                   "Current Location",
//                           style: const TextStyle(
//                               fontWeight: FontWeight.w300, fontSize: 16)),
//                       const TextSpan(
//                           text: "Destination \n",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 16)),
//                       TextSpan(
//                           text:
//                               "${mapProvider.rideRequestModel?.destination} \n",
//                           style: const TextStyle(
//                               fontWeight: FontWeight.w300, fontSize: 16)),
//                     ], style: const TextStyle(color: Colors.black))),
//                   ],
//                 ),
//                 const Divider(),
//                 Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(primary: Colors.red),
//                     child: const Text(
//                       "Cancel Ride",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           );
//         });
//   }
// }
