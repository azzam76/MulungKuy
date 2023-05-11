import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  File? _image;
  String? _uploadedFileURL;

  Future<void> _pickAndUploadImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      FirebaseStorage storage = FirebaseStorage.instance;
      Reference ref =
          storage.ref().child('images/${DateTime.now().toString()}');
      UploadTask uploadTask = ref.putFile(File(pickedFile.path));
      await uploadTask.whenComplete(() => null);
      String url = await ref.getDownloadURL();

      setState(() {
        _uploadedFileURL = url;
      });
    } else {
      print('No image selected.');
    }
  }

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            Center(
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Edit Profile',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        _pickAndUploadImage();
                      },
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: _uploadedFileURL != null
                            ? NetworkImage(_uploadedFileURL!)
                            : null,
                        child: _uploadedFileURL == null
                            ? Icon(
                                Icons.camera_alt,
                                size: 80,
                              )
                            : null,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: TextFormField(
                        controller: _nameController,
                        autofocus: false,
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          hintText: 'Nama',
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
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: TextFormField(
                        controller: _phoneNumberController,
                        autofocus: false,
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          hintText: 'Nomor Telepon',
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
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: TextFormField(
                        controller: _addressController,
                        autofocus: false,
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          hintText: 'Alamat',
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
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(300, 45),
                        primary: Color(0xFF57AE09),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                      ),
                      onPressed: () {
                        // Save profile information
                      },
                      child: Text('Save'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
