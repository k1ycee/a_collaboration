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
        shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        onPressed: widget.onPressed,
        child: Center(child: widget.label,),
        // color: widget.color,
      ),
    );
  }
}

class CustomFilledButton extends StatefulWidget {

  final Function onPressed;
  final Color color;
  final Text label;

  const CustomFilledButton({Key key, this.onPressed, this.color, this.label}) : super(key: key);

  @override
  _CustomFilledButtonState createState() => _CustomFilledButtonState();
}

class _CustomFilledButtonState extends State<CustomFilledButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: MaterialButton(
        elevation: 0.5,
        height: 50,
        onPressed: widget.onPressed,
        child: Center(child: widget.label,),
        color: widget.color,
      ),
    );
  }
}