import 'package:flutter/material.dart';
import 'ContentBoarding.dart';
import 'package:first_app/pages/login.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController(initialPage: 0);
  int currentePage = 0;
  List<Map<String, String>> listBoarding = [
    {
      "tittle": "ESPARCIMIENTO",
      "text": "Brindamos todos los servicios para consentir a tu mascota",
      "image": "assets/images/B1.png"
    },
    {
      "tittle": "ADOPCIÓN",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
      "image": "assets/images/B2.png"
    },
    {
      "tittle": "HOSPITALIDAD",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
      "image": "assets/images/B3.png"
    },
    {
      "tittle": "VETERINARIA",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
      "image": "assets/images/B4.png"
    },
    {
      "tittle": "TIENDA",
      "text": "Compra todas las necesidades de tu mascota sin salir de casa",
      "image": "assets/images/B5.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Expanded(
            flex: 1,
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  currentePage = value;
                });
              },
              itemBuilder: (context, index) => ContentBoarding(
                tittle: listBoarding[index]["tittle"],
                text: listBoarding[index]["text"],
                image: listBoarding[index]["image"],
              ),
              itemCount: listBoarding.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    listBoarding.length,
                    (index) => pages(index: index, currentePage: currentePage),
                  ),
                ),
                SizedBox(height: 60), // give it width
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(199, 255, 255, 255),
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          side: BorderSide(color: Colors.grey, width: 3)
                        ),
                        child: Text(
                          "Siguiente",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            if (currentePage == listBoarding.length - 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => Login()),
                              );
                            }
                            currentePage = currentePage + 1;
                            _controller.nextPage(
                                duration: (Duration(milliseconds: 500)),
                                curve: Curves.easeIn);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

AnimatedContainer pages({required int index, required int currentePage}) {
  return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      decoration: currentePage == index
          ? BoxDecoration(color: Color.fromARGB(255, 189, 9, 54))
          : BoxDecoration(color: Colors.grey),
      width: currentePage == index ? 40 : 20,
      height: 7,
      duration: kThemeAnimationDuration);
}
