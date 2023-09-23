import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:pneumonia_detector/MyHomePage.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({super.key});

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<ContentConfig> listContentConfig = [];

  @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: "WHAT IS PNEUMONIA?",
        styleTitle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
        description:
            "Pneumonia is an infection in one or both lungs. It can be caused by bacteria, viruses, or fungi. Pneumonia can be mild or severe, and can be life-threatening in some cases.",
        styleDescription: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 16.0,
        ),
        marginDescription: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 70.0,
        ),
        pathImage: "images/i1.png",
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "HOW DOES THE APP WORK?",
        styleTitle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
        description:
            "The app uses artificial intelligence to analyze X-ray images and identify signs of pneumonia. To use the app, simply select an X-ray image from your gallery or take a new photo. The app will then analyze the image and provide you with a result.",
        styleDescription: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 16.0,
        ),
        marginDescription: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 70.0,
        ),
        pathImage: "images/i2.png",
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "WHAT IF THE APP DETECTED PNEUMONIA?",
        styleTitle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
        description:
            "If the app says you have pneumonia, it is important to see a doctor right away. Pneumonia can be a serious condition, and it is important to get treatment early.",
        styleDescription: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 16.0,
        ),
        marginDescription: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
          bottom: 70.0,
        ),
        pathImage: "images/i3.png",
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }

  void onDonePress() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
