import 'package:erp_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 120.0,
              ),
              Image(
                image: AssetImage('assets/images/logo.png'),
                height: 50.0,
              ),
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  controller: _emailController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(30.0), // set border radius here
                      borderSide: BorderSide.none, // remove border here
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey[700],
                    ),
                    labelStyle: TextStyle(
                      color:
                          Colors.grey[700], // set the color of the label text
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email address';
                    }

                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  controller: _passwordController,
                  cursorColor: Colors.black,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none, // remove border here
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey[700],
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey[700],
                      ),
                    ),
                    labelStyle: TextStyle(
                      color:
                          Colors.grey[700], // set the color of the label text
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text.rich(
                  TextSpan(
                    text: 'Bằng việc nhấn đăng nhập, bạn đồng ý với các\n',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12.0,
                      color: Colors.grey[700],
                    ),
                    children: [
                      TextSpan(
                        text: 'Điều khoản dịch vụ ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      TextSpan(
                        text: 'và ',
                      ),
                      TextSpan(
                        text: 'Chính sách bảo mật',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' của chúng tôi!',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Quên mật khẩu?',
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Đăng nhập thành công')),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          } else {
                            // If the form is invalid, display an error message
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Lỗi đăng nhập!')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[700],
                          minimumSize: Size(120, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Đăng nhập',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
