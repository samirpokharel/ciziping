import 'package:ciziping/constant/color.dart';
import 'package:ciziping/services/validator/auth_validator.dart';
import 'package:ciziping/widgets/navigation_bar/navigation_bar_logo.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final Function toggleScreen;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Login({this.toggleScreen});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
              SizedBox(height: 50),
              Container(
                width: 500,
                child: Column(
                  children: [
                    TextFormField(
                      controller: email,
                      validator: (val) => Validator.emailValidator(val),
                      style: TextStyle(
                        fontSize: 20,
                        height: 1.7,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: "Email",
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      obscureText: true,
                      controller: password,
                      validator: (val) => Validator.passwordValidator(val),
                      style: TextStyle(
                        fontSize: 20,
                        height: 1.7,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: "Password",
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {}
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an acount?"),
                        TextButton(
                          onPressed: () {
                            toggleScreen();
                          },
                          child: Text("Register"),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
