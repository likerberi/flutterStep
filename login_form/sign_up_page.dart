import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpPage();
  }
}

class _SignUpPage extends State<SignUpPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailBoxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 40),
          child: Stack(
            children: [
              _signUpForm(),
              Container(
                alignment: Alignment.bottomCenter,
                child: FlatButton(
                    onPressed: () {},
                    child: Text('Already have an account? Then login')),
              )
            ],
          )),
    );
  }

  Widget _signUpForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _usernameController,
          decoration:
              InputDecoration(icon: Icon(Icons.person), labelText: 'UserName'),
        ),
        TextField(
          controller: _emailBoxController,
          decoration:
              InputDecoration(icon: Icon(Icons.mail), labelText: 'EmailBox'),
        ),
        TextField(
          controller: _passwordController,
          decoration:
              InputDecoration(icon: Icon(Icons.lock), labelText: 'Password'),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
        ),
        FlatButton(
          onPressed: _signUp,
          child: Text('Sign Up'),
          color: Theme.of(context).accentColor,
        )
      ],
    );
  }

  void _signUp() {
    final username = _usernameController.text.trim();
    final emailbox = _emailBoxController.text.trim();
    final password = _passwordController.text.trim();

    print('username: $username');
    print('email: $emailbox');
    print('password: $password');
  }
}
