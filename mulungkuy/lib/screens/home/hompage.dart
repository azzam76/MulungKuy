import 'package:mulungkuy/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  final AuthService _auth = new AuthService();

  @override
  Widget build(BuildContext context) {
    final SignOut = ElevatedButton(
      // For Front End
      onPressed: () {
        Navigator.pushNamed(context, '/');
      },

      // For Use

      //onPressed: () async {
      // await _auth.signOut();
      //},
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.logout,
              color: Colors.white,
              size: 24.0,
            ),
            SizedBox(width: 10.0),
            Text(
              'Sign Out',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );

    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primaryColor: Color(0xFF57AE09),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          button: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text('MulungKuy'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                radius: 60,
                backgroundColor: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Hai,\nAzzam!\nSelamat Datang!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/order');
                        },
                        child: Text('Order'),
                        style: ElevatedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          primary: Color(0xFF57AE09),
                          onPrimary: Colors.white,
                          minimumSize: Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/track');
                        },
                        child: Text('Track'),
                        style: ElevatedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          primary: Color(0xFF57AE09),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                          minimumSize: Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/history');
                        },
                        child: Text('History'),
                        style: ElevatedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          primary: Color(0xFF57AE09),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                          minimumSize: Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/order');
                        },
                        child: Text('Edit'),
                        style: ElevatedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          primary: Color(0xFF57AE09),
                          onPrimary: Color.fromARGB(255, 255, 255, 255),
                          minimumSize: Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SignOut,
            ],
          ),
        ),
      ),
    );
  }
}
