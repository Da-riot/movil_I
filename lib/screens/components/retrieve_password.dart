import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:first_app/screens/sign_in.dart';


class Retrieve extends StatelessWidget {
  const Retrieve({super.key});

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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Por seguridad, tu contraseña debe tener una longitud de entre 8 y 15 caracteres, usar mayúsculas, minúsculas, contener por lo menos un número y un caracter especial",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Nueva contraseña",
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
                    hintText: "Nueva contraseña",
                    fillColor: Colors.white70),
              ),
            ),
          ],
        ),
         Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Confirmar nueva contraseña",
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
                    hintText: "Confirmar tu nueva contraseña",
                    fillColor: Colors.white70),
              ),
            ),
          ],
        ),
        SizedBox(height: 410),
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
                  "Actualizar contraseña",
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