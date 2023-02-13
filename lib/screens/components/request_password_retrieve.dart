import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:first_app/screens/sign_in.dart';


class RequestRetrieve extends StatelessWidget {
  const RequestRetrieve({super.key});

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
        title: Text("Recuperar contraseña",
            style: TextStyle(fontSize: 22, color: Colors.white)),
      ),
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Ingresa tu email para restablecer tu contraseña",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
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
            Expanded(
              child: Text(
                  "Ingrese su correo electrónico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      )),
            ),
          ],
        ),
        SizedBox(height: 480),
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
                  "Enviar Solicitud",
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
      ],
      ),

    );
  }
}