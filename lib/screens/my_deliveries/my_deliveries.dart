import 'package:flutter/material.dart';

import '../../utility/helpers/constants.dart';

class DeliveryHistoryScreen extends StatefulWidget {
  static const String iD = '/myDeliveriesScreen';

  const DeliveryHistoryScreen({Key? key}) : super(key: key);

  @override
  DeliveryHistoryScreenState createState() => DeliveryHistoryScreenState();
}

class DeliveryHistoryScreenState extends State<DeliveryHistoryScreen> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    // Provider.of<GetListProvider>(context).getDeliveriesList();
  }

  @override
  Widget build(BuildContext context) {
    // final deliveryList =
    //     Provider.of<GetListProvider>(context, listen: false).deliveryList;
    return Scaffold(
      backgroundColor: kVistaWhite,
      appBar: AppBar(
        title: const Text(
          "My Deliveries",
          style: TextStyle(
              color: kPrimaryGoldColor,
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
          color: kPrimaryGoldColor,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child:
            // deliveryList.isNotEmpty
            //     ? DeliveryListview(deliveryList: deliveryList)
            //     :
            //
            Center(
          child: Text(
            'No Deliveries Yet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
