import 'package:flutter/material.dart';

//signup,sign in button
class LogButton extends StatelessWidget {
  LogButton(
      {required this.colour,
      required this.title,
      required this.onPressed}); //custom constructor with required property
  final Color colour;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
        child: MaterialButton(
          minWidth: double.infinity,
          onPressed: () {
            onPressed();
          },
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

//Reusable Textbutton alignment end
class Textbtn extends StatelessWidget {
  Textbtn({required this.title, required this.onPressed});
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onPressed();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ));
  }
}

//Reusable TextBox with Fixed Image
class TextBox extends StatelessWidget {
  TextBox({required this.text});
  late final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          Image(
            image: AssetImage("assets/1.png"),
            width: 200,
            height: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
