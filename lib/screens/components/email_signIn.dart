import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:first_app/screens/sign_in.dart';

class Email_SignIn extends StatefulWidget {
  const Email_SignIn({super.key});

  @override
  State<Email_SignIn> createState() => _Email_SignInState();
}

class _Email_SignInState extends State<Email_SignIn> {
  // show the password or not
  bool _isObscure = true;
  bool accept = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 0, 102),
        leading: Container(
          child: GestureDetector(
              child: Icon(Icons.arrow_back,
                  color: Color.fromARGB(255, 216, 9, 137)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SignIn()),
                );
              }),
        ),
        title: Text("Regístrate",
            style: TextStyle(fontSize: 22, color: Colors.white)),
      ),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Crea una cuenta para empezar a usar la app",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Nombre",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                    color: Color.fromARGB(255, 192, 192, 192), width: 2),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Nombre completo",
                    fillColor: Colors.white70),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Correo electrónico",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                    color: Color.fromARGB(255, 192, 192, 192), width: 2),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Dirección de correo",
                    fillColor: Colors.white70),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Contraseña",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                    color: Color.fromARGB(255, 192, 192, 192), width: 2),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              width: 400,
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    // this button is used to toggle the password visibility
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Contraseña",
                    fillColor: Colors.white70),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                  "La contraseña debe contener caracteres, números y símbolos con un mínimo de 6 caracteres",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      )),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                title: const Text(
                    'Al registrarme acepto los términos y condiciones y las políticas de privacidad'),
                leading: Radio(
                  value: true,
                  groupValue: accept,
                  onChanged: (accept) {
                    setState(() {
                      accept = true;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 180),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(198, 101, 184, 108),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    ),
                child: Text(
                  "Siguiente",
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 248, 248),
                    fontSize: 25,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                "¿Ya tienes una cuenta?",
                style: TextStyle(fontSize: 17),
              ),
            ),
            GestureDetector(
              child: Text(
                "Iniciar sesión",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 214, 29, 91),
                  fontSize: 17,
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
