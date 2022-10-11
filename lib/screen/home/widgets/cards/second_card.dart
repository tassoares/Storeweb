import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset("images/image.png", height: 200,),
      ],
    );
  }
}