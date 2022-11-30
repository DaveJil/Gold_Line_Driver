import 'package:get_it/get_it.dart';

import 'calls_and_sms.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(CallsAndMessagesService());
}
