import 'package:amplify/auth_credentials.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final ValueChanged<LoginCredentials> didProvideCredentials;
  final VoidCallback shouldShowSignUp;
  LoginPage({Key key, this.didProvideCredentials, this.shouldShowSignUp})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Login_Page')),
        body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 40),
          child: Stack(
            children: [
              _loginForm(),
              Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    onPressed: widget.shouldShowSignUp,
                    child: Text('Don\'t have an account? Sign up.')),
              )
            ],
          ),
        ));
  }

  Widget _loginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _usernameController,
          decoration:
              InputDecoration(icon: Icon(Icons.mail), labelText: 'Username'),
        ),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
              icon: Icon(Icons.lock_open), labelText: 'Password'),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
        ),
        TextButton(
          onPressed: _login,
          child: Text('Login'),
          style: TextButton.styleFrom(backgroundColor: Colors.transparent),
        )
      ],
    );
  }

  void _login() {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();
    final credentials =
        LoginCredentials(username: username, password: password);
    widget.didProvideCredentials(credentials);

    print('username: $username');
    print('password: $password');
  }
}
