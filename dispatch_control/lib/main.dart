import 'package:flutter/material.dart';
import 'package:dispatch_control/pages/CarpoolRequestPage.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => RateBuddies(),
      },
    ));
