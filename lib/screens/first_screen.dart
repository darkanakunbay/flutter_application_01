import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_app_bar.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';
import 'package:flutter_application_1/widgets/custom_rect_button.dart';

import 'second_screen.dart';

//import 'second_page.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.redAccent,
            appBar: CustomAppBar(
              'Тапшырма 01',
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRectButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(
                            san: _number,
                          ),
                        ),
                      );
                    },
                    number: _number,
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        onTap: _dec,
                        iconText: '-',
                      ),
                      const SizedBox(width: 20.0),
                      CustomButton(
                        onTap: _inc,
                        iconText: '+',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _dec() {
    _number--;

    setState(() {});
  }

  void _inc() {
    setState(() {
      _number++;
    });
  }
}
