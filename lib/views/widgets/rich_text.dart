import 'package:flutter/material.dart';

class MeRich extends StatefulWidget {

  final Text word;
  final Function onPressed;
  
  MeRich({@required this.onPressed,@required this.word});

  @override
  _MeRichState createState() => _MeRichState();
}

class _MeRichState extends State<MeRich> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: widget.word,
    );
  }
}