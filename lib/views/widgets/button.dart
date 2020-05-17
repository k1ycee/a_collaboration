import 'package:flutter/material.dart';

class CustomOutButton extends StatefulWidget {

  final Function onPressed;
  final Color color;
  final Text label;
  
  const CustomOutButton({@required this.onPressed, @required this.label, this.color});


  @override
  _CustomOutButtonState createState() => _CustomOutButtonState();
}

class _CustomOutButtonState extends State<CustomOutButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: MaterialButton(
        splashColor: Colors.black,
        height: 50,
        shape: OutlineInputBorder(borderSide: BorderSide(color: widget.color)),
        onPressed: widget.onPressed,
        child: Center(child: widget.label,),
        // color: widget.color,
      ),
    );
  }
}

