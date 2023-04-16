import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        onPressed: () {},
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
                        onPressed: () {},
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
                        onPressed: () {},
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
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
