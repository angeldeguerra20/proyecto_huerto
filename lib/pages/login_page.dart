import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = "login_page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';
  bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFe0000),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Plants".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              _isLogin ? _loginForm() : _registerForm(),
              SizedBox(
                height: 25.0,
              ),
              _switchButton(),
              SizedBox(
                height: 15.0,
              ),
              _buttonAction(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerForm() {
    return Column(
      children: [
        _textFieldName(),
        SizedBox(
          height: 15.0,
        ),
        _textFieldGmail(),
        SizedBox(
          height: 15.0,
        ),
        _textFieldPassword(),
      ],
    );
  }

  Widget _loginForm() {
    return Column(
      children: [
        _textFieldGmail(),
        SizedBox(
          height: 15.0,
        ),
        _textFieldPassword(),
      ],
    );
  }

  Widget _textFieldName() {
    return _TextFieldGeneral(
      labelText: "Nombre",
      hintText: "Christian Ariel",
      onChanged: (String value) {},
      icon: Icons.person_outline,
    );
  }

  Widget _textFieldGmail() {
    return _TextFieldGeneral(
      labelText: 'Gmail',
      hintText: 'Example@test.com',
      onChanged: (String value) {
        setState(() {
          _email = value;
        });
      },
      icon: Icons.mail_outline,
    );
  }

  Widget _textFieldPassword() {
    return _TextFieldGeneral(
      labelText: 'Contraseña',
      hintText: '********',
      onChanged: (String value) {
        setState(() {
          _password = value;
        });
      },
      obscureText: true,
      icon: Icons.lock_outline_rounded,
    );
  }

  Widget _buttonAction() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffFF6969),
        padding: EdgeInsets.symmetric(
          horizontal: 110.0,
          vertical: 15.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        // Handle sign up or login based on _isLogin value
        if (_isLogin) {
          _login();
        } else {
          _register();
        }
      },
      child: Text(
        _isLogin ? 'Iniciar Sesión' : 'Registrarme',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0,
        ),
      ),
    );
  }

  Widget _switchButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          _isLogin = !_isLogin;
        });
      },
      child: Text(
        _isLogin ? '¿No tienes cuenta? Regístrate' : '¿Ya tienes cuenta? Inicia Sesión',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
    );
  }

  void _register() {
    // Implement your registration logic here
    print('Email: $_email, Password: $_password');
  }

  void _login() {
    // Implement your login logic here
    print('Email: $_email, Password: $_password');
  }
}

class _TextFieldGeneral extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final ValueChanged<String> onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final IconData icon;
  const _TextFieldGeneral({
    required this.labelText,
    this.hintText,
    required this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: labelText,
          hintText: hintText ?? '',
        ),
        onChanged: onChanged,
      ),
    );
  }
}
