import 'package:mulungkuy/models/loginuser.dart';
import 'package:mulungkuy/services/auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final Function? toggleView;
  Login({this.toggleView});

  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  bool _obscureText = true;

  final _email = TextEditingController();
  final _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final emailField = Container(
      width: 300,
      height: 45,
      child: TextFormField(
        controller: _email,
        autofocus: false,
        validator: (value) {
          if (value != null) {
            if (value.contains('@') && value.endsWith('.com')) {
              return null;
            }
            return 'Enter a Valid Email Address';
          }
        },
        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
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
    );

    final passwordField = Container(
        width: 300,
        height: 45,
        child: TextFormField(
          obscureText: _obscureText,
          controller: _password,
          autofocus: false,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'This field is required';
            }
            if (value.trim().length < 8) {
              return 'Password must be at least 8 characters in length';
            }
            // Return null if the entered password is valid
            return null;
          },
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Color(0xFF99AAB5)),
            suffixIcon: IconButton(
              icon:
                  Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
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
        ));

    final txtbutton = TextButton(
      onPressed: () {
        //widget.toggleView!();
      },
      child: const Text(
        'Belum Punya Akun? Daftar',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.normal,
        ),
      ),
    );

    final loginEmailPasswordButon = Material(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(300, 45),
          primary: Color(0xFF57AE09),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.all(15.0),
        ),
        //For UI Only
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },

        //Activate for final
        //onPressed: () async {
        // if (_formKey.currentState!.validate()) {
        //  dynamic result = await _auth.signInEmailPassword(
        //     LoginUser(email: _email.text, password: _password.text));
        // if (result.uid == null) {
        //null means unsuccessfull authentication
        //   showDialog(
        //       context: context,
        //       builder: (context) {
        //         return AlertDialog(
        //           content: Text(result.code),
        //         );
        //       });
        // }
        //}
        child: Text(
          "Log in",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          textAlign: TextAlign.center,
        ),
      ),
    );
    return MaterialApp(
      title: 'MulungKuy Login',
      home: Scaffold(
        backgroundColor: Color(0xFFFCFDFE),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/Vector-2.png',
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/Vector-3.png',
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/Vector.png',
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/Vector-1.png',
              ),
            ),

            // Add other widgets here, such as a column or container
            Center(
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
                      'Selamat Datang\nKembali.\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    emailField,
                    SizedBox(height: 20.0),
                    passwordField,
                    SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      height: 20,
                      child: Text(
                        'Lupa Password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    loginEmailPasswordButon,
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 60,
              left: MediaQuery.of(context).size.width / 2 - 100,
              child: txtbutton,
            ),
          ],
        ),
      ),
    );
  }
}
