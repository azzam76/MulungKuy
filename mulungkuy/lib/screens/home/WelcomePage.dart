import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang di \nMulungKuy!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\nAplikasi Penukaran Sampah Plastik\n\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'Silahkan Masuk atau Registrasi\nUntuk Melanjutkan',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Container(
              width: 300,
              height: 300,
              child: Image.asset(
                  'assets/images/welcomepage.png'), // load the image
            ),
            SizedBox(height: 20),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login'); // go to login
              },
              child: Text(
                'Masuk',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(250, 50)),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 255, 255, 255)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color(0xFF57AE09), width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/register'); // go to registration
              },
              child: Text('Registrasi'),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(250, 50)),
                backgroundColor: MaterialStateProperty.all(Color(0xFF57AE09)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
