import 'package:mulungkuy/models/firebaseuser.dart';
import 'package:mulungkuy/screens/home/hompage.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'authenticate/handler.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser?>(context);

    if (user == null) {
      return Handler();
    } else {
      return Home();
    }
  }
}
