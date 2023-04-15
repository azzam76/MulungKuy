import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Garbage Collection App',
    theme: ThemeData(
      primaryColor: Color(0xFF57AE09),
      accentColor: Color(0xFF57AE09),
      fontFamily: 'Montserrat',
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => OrderPage(),
    },
  ));
}

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final addressController = TextEditingController();

  void _submitOrder() {
    if (_formKey.currentState!.validate()) {
      // TODO: Submit order to backend
      print(
          'Submitting order for ${nameController.text} at ${addressController.text}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Order submitted successfully!'),
          duration: Duration(seconds: 3),
          backgroundColor: Theme.of(context).accentColor,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesanan'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.0),
                Text(
                  'Alamat Tersimpan',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 35, 35)),
                ),
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Pilih Alamat Tersimpan';
                    }
                    return null;
                  },
                  style: TextStyle(
                      fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                SizedBox(height: 32.0),
                Text(
                  'Nama',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 35, 35)),
                ),
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan Nama';
                    }
                    return null;
                  },
                  style: TextStyle(
                      fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Alamat',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                TextFormField(
                  controller: addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan Alamat';
                    }
                    return null;
                  },
                  style: TextStyle(
                      fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                SizedBox(height: 32.0),
                Text(
                  'Nomor Telepon',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 35, 35)),
                ),
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukkan Nomor Telepon';
                    }
                    return null;
                  },
                  style: TextStyle(
                      fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                SizedBox(height: 32.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      _submitOrder();
                    },
                    child: Text('Submit Order'),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).accentColor,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: 64.0, vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      textStyle: TextStyle(fontSize: 20.0),
                    ),
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

// // Home Page

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Garbage Selling App',
//       theme: ThemeData(
//         primaryColor: Color(0xFF57AE09),
//         textTheme: TextTheme(
//           headline1: TextStyle(
//             color: Colors.white,
//             fontSize: 32,
//             fontWeight: FontWeight.bold,
//           ),
//           button: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//           ),
//         ),
//       ),
//       home: Scaffold(
//         backgroundColor: Colors.grey[100],
//         appBar: AppBar(
//           title: Text('Garbage Selling App'),
//           centerTitle: true,
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 width: 200,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Color(0xFF57AE09),
//                 ),
//                 child: Icon(
//                   Icons.shopping_cart,
//                   color: Colors.white,
//                   size: 100,
//                 ),
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Order'),
//                 style: ElevatedButton.styleFrom(
//                   primary: Color(0xFF57AE09),
//                   onPrimary: Colors.white,
//                   minimumSize: Size(250, 60),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Track'),
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.grey[300],
//                   onPrimary: Colors.black,
//                   minimumSize: Size(250, 60),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('History'),
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.grey[300],
//                   onPrimary: Colors.black,
//                   minimumSize: Size(250, 60),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Edit'),
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.grey[300],
//                   onPrimary: Colors.black,
//                   minimumSize: Size(250, 60),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
