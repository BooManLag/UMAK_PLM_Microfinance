import 'package:flutter/material.dart';
import '../login/login.dart';
import '../components/default_form_field.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[600],
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'Create Your Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              DefaultFormField(
                type: TextInputType.text,
                controller: usernameController,
                label: "Username",
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
              SizedBox(height: 15,),
              DefaultFormField(
                type: TextInputType.emailAddress,
                controller: emailController,
                label: "Email",
                labelColor: Colors.black,
                borderWidth: 50.0,
                prefixColorIcon: Colors.black,
                prefix: Icons.alternate_email,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email!';
                  }
                  return null;
                },
                borderColor: Colors.black,
              ),
              SizedBox(height: 15,),
              DefaultFormField(
                type: TextInputType.visiblePassword,
                controller: passwordController,
                label: "Password",
                labelColor: Colors.black,
                borderWidth: 50.0,
                prefixColorIcon: Colors.black,
                prefix: Icons.password,
                isPassword: true,
                suffix: Icons.visibility_off_outlined,
                isSuffix: true,
                maxLines: 1,
                suffixPressed: () {},
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password!';
                  }
                  return null;
                },
                borderColor: Colors.black,
              ),
              SizedBox(height: 25,),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: value,
                    onChanged: (bool? value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                    checkColor: Colors.white,
                  ),
                  Expanded(
                    child: Text(
                      'By creating an account means you agree to the Terms and Conditions, and our Privacy Policy.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
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
                      padding: EdgeInsets.fromLTRB(125.0, 5.0, 125.0, 5.0),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    )
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 14, color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  InkWell(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()
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
