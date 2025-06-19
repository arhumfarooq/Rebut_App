import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lx/components/cutom_appbar.dart';
import 'package:lx/components/explore_conatiner/custom_appbar.dart';
import 'package:lx/view/Side/listing.dart';
import 'package:lx/view/Side/my_order.dart';
import 'package:lx/view/addition_in_ui/checkout.dart';
import 'package:lx/view/addition_in_ui/shipping_add.dart';
import 'package:lx/view/explore.dart';
import 'package:lx/view/home_Screen.dart';
import 'package:lx/view/mainscreen.dart';
import 'package:lx/view/messages.dart';
import 'package:lx/view/payments/purchased_form.dart';


void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
     home: PurchasedForm(),
    );
  }
}

