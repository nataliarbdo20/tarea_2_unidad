
import 'package:flutter/material.dart';
import 'package:flutter_app/componentes/button_login.dart';
import 'package:flutter_app/pages/profile_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void profilePage(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> ProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              //logo
              Container(
                height: 100,
                width: 100,
                child: Image.asset('lib/images/usuario.png'),
              ),
              const SizedBox(height: 50),
              //welcome back youve have been missed

              Text(
                'Bienvenido',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 25,
                ),
              ),
              Text(
                'Inicia sesión para continuar',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),
              //user name textfield

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(top: 20.0, bottom: 20.0, left: 28.0),
                    hintText: 'Usuario',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.grey.shade700)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade400),
                        borderRadius: BorderRadius.circular(30.0)),
                    fillColor: Colors.blue.shade100.withOpacity(0.5),
                    filled: true,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              //password texfiedl

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(top: 20.0, bottom: 20.0, left: 28.0),
                    hintText: 'Contraseña',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.5,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade400),
                        borderRadius: BorderRadius.circular(30.0)),
                    fillColor: Colors.blue.shade100.withOpacity(0.5),
                    filled: true,
                  ),
                ),
              ),

             const SizedBox(height: 10),
              //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Olvidaste contraseña?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
              //sign in button

              MyButton(),
          

              //or continue with

              //google + apple sign in buttons

              //not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
