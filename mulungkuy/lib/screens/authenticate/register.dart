import 'package:mulungkuy/models/loginuser.dart';
import 'package:mulungkuy/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function? toggleView;
  Register({this.toggleView});

  @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {
  final AuthService _auth = AuthService();

  bool _obscureText = true;
  final _email = TextEditingController();
  final _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final emailField = Container(
      width: 300,
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
          widget.toggleView!();
        },
        child: const Text('Sudah Punya Akun?'));

    final registerButton = Material(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(300, 45),
          primary: Color(0xFF57AE09),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.all(15.0),
        ),
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            dynamic result = await _auth.registerEmailPassword(
                LoginUser(email: _email.text, password: _password.text));
            if (result.uid == null) {
              //null means unsuccessfull authentication
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(result.code),
                    );
                  });
            }
          }
        },
        child: Text(
          "Register",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: true,
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
          Center(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Registrasi',
                      style: TextStyle(
                        fontSize: 32.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 45.0),
                    emailField,
                    const SizedBox(height: 25.0),
                    passwordField,
                    const SizedBox(height: 25.0),
                    registerButton,
                    const SizedBox(height: 35.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: MediaQuery.of(context).size.width / 2 - 80,
            child: txtbutton,
          ),
        ],
      ),
    );
  }
}
