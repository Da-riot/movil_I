import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.tittle, this.image, this.text});
  final String? tittle, image, text;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
           Padding(
             padding: const EdgeInsets.only(top: 60, bottom: 40),
             child: Image(
             image: AssetImage(image!),
             width: 300,
             height: 275,
             ),
           ),
        
          Text(
            tittle!,
            style: const TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 117, 18, 156),
              fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
            text!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20.0,
              color: Color.fromARGB(255, 124, 119, 126)
            ),
            ),
            )
          
        ],
      ),
    );
  }
}
