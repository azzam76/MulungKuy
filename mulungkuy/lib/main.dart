import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Garbage Selling App',
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
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Garbage Selling App'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF57AE09),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: Text('Order'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF57AE09),
                  onPrimary: Colors.white,
                  minimumSize: Size(250, 60),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Track'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                  minimumSize: Size(250, 60),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('History'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                  minimumSize: Size(250, 60),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Edit'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  onPrimary: Colors.black,
                  minimumSize: Size(250, 60),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Login Page

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MulungKuy Login',
//       home: Scaffold(
//         backgroundColor: Color(0xFFFCFDFE),
//         body: Center(
//           child: Container(
//             margin: EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   'Hai!',
//                   style: TextStyle(
//                     fontSize: 32.0,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'Selamat Datang \n       Kembali.\n',
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//                 SizedBox(height: 20.0),
//                 TextField(
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                     hintText: 'Email',
//                     hintStyle: TextStyle(color: Color(0xFF99AAB5)),
//                     filled: true,
//                     fillColor: Color(0xFFEBF0F5),
//                     contentPadding: EdgeInsets.all(15.0),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xFFEBF0F5),
//                       ),
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white),
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10.0),
//                 TextField(
//                   style: TextStyle(color: Colors.white),
//                   decoration: InputDecoration(
//                     hintText: 'Password',
//                     hintStyle: TextStyle(color: Color(0xFF99AAB5)),
//                     filled: true,
//                     fillColor: Color(0xFFEBF0F5),
//                     contentPadding: EdgeInsets.all(15.0),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xFFEBF0F5),
//                       ),
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white),
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                   obscureText: true,
//                 ),
//                 SizedBox(height: 20.0),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     child: Text('Login'),
//                     style: ElevatedButton.styleFrom(
//                       primary: Color(0xFF57AE09),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5.0),
//                       ),
//                       padding: EdgeInsets.all(15.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10.0),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'Lupa Kata Sandi?',
//                     style: TextStyle(
//                       color: Color(0xFF99AAB5),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   '\n\nBelum Punya Akun?',
//                   style: TextStyle(
//                     fontSize: 15.0,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//                 Text(
//                   'Daftar disini',
//                   style: TextStyle(
//                     fontSize: 17.0,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
