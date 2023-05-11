import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mulungkuy/models/firebaseuser.dart';
import 'package:mulungkuy/screens/Profilefrom.dart';
import 'package:mulungkuy/screens/authenticate/login.dart';
import 'package:mulungkuy/screens/authenticate/register.dart';
import 'package:mulungkuy/screens/home/WelcomePage.dart';
import 'package:mulungkuy/screens/home/history.dart';
import 'package:mulungkuy/screens/home/hompage.dart';
import 'package:mulungkuy/screens/home/order.dart';
import 'package:mulungkuy/screens/home/track.dart';
import 'package:provider/provider.dart';

import 'services/auth.dart';
import 'screens/wrapper.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// //For UI Only
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My App',
//       theme: ThemeData(
//         primaryColor: Color(0xFF57AE09),
//         accentColor: Color(0xFF57AE09),
//         fontFamily: 'Montserrat',
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => WelcomePage(),
//         '/login': (context) => Login(),
//         '/home': (context) => Home(),
//         '/order': (context) => OrderPage(),
//         '/history': (context) => OrderHistoryPage(),
//         '/track': (context) => DeliveryStatusPage(
//             deliveryStatus: 'Informasi Driver',
//             driverName: 'Pak Husen',
//             licensePlate: 'BL1000 LAM'),
//       },
//     );
//   }
// }

// For Auth
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser?>.value(
        value: AuthService().user,
        initialData: null,
        child: MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.black,
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.black,
              textTheme: ButtonTextTheme.primary,
              colorScheme: Theme.of(context)
                  .colorScheme
                  .copyWith(secondary: Colors.white),
            ),
            fontFamily: 'Georgia',
            textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
              bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => Wrapper(),
            '/login': (context) => Login(),
            '/home': (context) => Home(),
            '/order': (context) => OrderPage(),
            '/history': (context) => OrderHistoryPage(),
            '/edit': (context) => ProfileForm(),
            '/track': (context) => DeliveryStatusPage(
                deliveryStatus: 'Informasi Driver',
                driverName: 'Pak Husen',
                licensePlate: 'BL1000 LAM'),
          },
        ));
  }
}
