import 'package:flutter/material.dart';
import '../register/register.dart';
import '../components/default_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal[600],
          body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 175.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                DefaultFormField(
                  type: TextInputType.name,
                  controller: usernameController,
                  label: "username",
                  labelColor: Colors.black,
                  borderWidth: 50.0,
                  prefixColorIcon: Colors.black,
                  prefix: Icons.person,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username!';
                    }
                    return null;
                  },
                  borderColor: Colors.black,
                ),
                SizedBox(height: 15.0,),
                DefaultFormField(
                  type: TextInputType.visiblePassword,
                  controller: passwordController,
                  label: "Password",
                  isPassword: true,
                  labelColor: Colors.black,
                  borderWidth: 50.0,
                  prefixColorIcon: Colors.black,
                  prefix: Icons.password,
                  suffix: Icons.visibility_off_outlined,
                  maxLines: 1,
                  isSuffix: true,
                  suffixPressed: () {},
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password!';
                    }
                    return null;
                  },
                  borderColor: Colors.black,
                ),
                SizedBox(height: 25.0,),
                Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.teal[900],
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(140.0, 5.0, 140.0, 5.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(fontSize: 14, color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    InkWell(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
