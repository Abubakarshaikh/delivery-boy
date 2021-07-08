import 'package:flutter/material.dart';

class BlockButtonWidget extends StatelessWidget {
  const BlockButtonWidget(
      {Key key,
      @required this.color,
      this.gradient,
      @required this.text,
      @required this.onPressed})
      : super(key: key);

  final Color color;
  final Text text;
  final VoidCallback onPressed;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // gradient: gradient,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 40,
              offset: Offset(0, 15)),
          BoxShadow(color: Colors.grey, blurRadius: 13, offset: Offset(0, 3))
        ],
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      child: MaterialButton(
        elevation: 0,
        onPressed: this.onPressed,
        padding: EdgeInsets.symmetric(horizontal: 66, vertical: 14),
        color: this.color,
        shape: StadiumBorder(),
        child: this.text,
      ),
    );
  }
}
