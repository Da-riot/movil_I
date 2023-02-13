import 'package:first_app/pages/login.dart';
import 'package:first_app/screens/components/email_signIn.dart';
import 'package:first_app/screens/components/request_password_retrieve.dart';
import 'package:first_app/screens/components/retrieve_password.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          children: [
            const Center(
              child: Image(
                image: AssetImage("assets/images/logo.jpg"),
                width: 300,
                height: 275,
              ),
            ),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color.fromARGB(255, 60, 107, 236),
                ),
                width: 320,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 22, top: 12, bottom: 12, right: 35),
                          child: Image.network(
                            'https://www.seekpng.com/png/full/788-7887426_google-g-png-google-logo-white-png.png',
                            fit: BoxFit.cover,
                            width: 25,
                            height: 25,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Continuar con Google",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => RequestRetrieve()),
                  );
                }
            ),
            SizedBox(height: 30),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Color.fromARGB(255, 44, 94, 145),
                ),
                width: 320,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 22, top: 12, bottom: 12, right: 35),
                          child: Image(
                            image:
                                AssetImage("assets/images/facebook_icon.png"),
                            width: 25,
                            height: 25,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Continuar con Facebook",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Retrieve()),
                  );
                }
            ),
            SizedBox(height: 50),
            GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(color: Colors.grey, width: 2.5),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  width: 320,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 22, top: 12, bottom: 12, right: 35),
                            child: Icon(Icons.email, color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Continuar con e-mail",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Email_SignIn()),
                  );
                }),
            SizedBox(height: 50),
            GestureDetector(
              child: Text(
                "Entrar como invitado",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 214, 29, 91),
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                child: Text(
                  "Entrar como vendedor",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 20, 177, 41),
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    "¿Ya tienes una cuenta?",
                    style: TextStyle(
                      fontSize: 17
                    ),
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
            )
          ],
        ),
      ),
    );
  }
}
