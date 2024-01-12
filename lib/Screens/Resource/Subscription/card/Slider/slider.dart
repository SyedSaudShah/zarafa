import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SliderTheme(
              data: const SliderThemeData(
                trackHeight: 30.0, // Adjust the track height as needed
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
              ),
              child: Slider(
                activeColor: Colors.purple,
                value: _sliderValue,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
            ),
            Text(
              '$_sliderValue',
              //'Slider Value: $_sliderValue',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ],
    );
  }
}
