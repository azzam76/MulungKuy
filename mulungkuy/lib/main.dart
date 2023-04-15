import 'package:flutter/material.dart';

// class GarbageSellingAppHomePage extends StatelessWidget {
//   const GarbageSellingAppHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Color(0xff57AE09),
//         title: Text('Garbage Selling App'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(vertical: 16.0),
//             child: Image.asset(
//               'assets/images/garbage.png',
//               width: 200.0,
//             ),
//           ),
//           Text(
//             'Welcome to the Garbage Selling App',
//             style: TextStyle(
//               fontSize: 24.0,
//               fontWeight: FontWeight.bold,
//               color: Color(0xff57AE09),
//             ),
//           ),
//           SizedBox(height: 8.0),
//           Text(
//             'Sell your trash to earn cash!',
//             style: TextStyle(fontSize: 18.0),
//           ),
//           SizedBox(height: 32.0),
//           ElevatedButton(
//             style: ButtonStyle(
//               backgroundColor:
//                   MaterialStateProperty.all<Color>(Color(0xff57AE09)),
//             ),
//             onPressed: () {
//               // Navigate to the sell garbage screen
//             },
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
//               child: Text(
//                 'Sell Garbage',
//                 style: TextStyle(fontSize: 18.0),
//               ),
//             ),
//           ),
//           SizedBox(height: 16.0),
//           ElevatedButton(
//             style: ButtonStyle(
//               backgroundColor:
//                   MaterialStateProperty.all<Color>(Color(0xff57AE09)),
//             ),
//             onPressed: () {
//               // Navigate to the buy garbage screen
//             },
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
//               child: Text(
//                 'Buy Garbage',
//                 style: TextStyle(fontSize: 18.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//Login Page

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discord Login',
      home: Scaffold(
        backgroundColor: Color(0xFFFCFDFE),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Hai!',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Selamat Datang \n       Kembali.\n',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Color(0xFF99AAB5)),
                    filled: true,
                    fillColor: Color(0xFFEBF0F5),
                    contentPadding: EdgeInsets.all(15.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFEBF0F5),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Color(0xFF99AAB5)),
                    filled: true,
                    fillColor: Color(0xFFEBF0F5),
                    contentPadding: EdgeInsets.all(15.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFEBF0F5),
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF57AE09),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: EdgeInsets.all(15.0),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lupa Kata Sandi?',
                    style: TextStyle(
                      color: Color(0xFF99AAB5),
                    ),
                  ),
                ),
                Text(
                  '\n\nBelum Punya Akun?',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  'Daftar disini',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
