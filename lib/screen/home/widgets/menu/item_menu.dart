import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  
  final IconData icon;
  final String text;

  const ItemMenu({ Key? key, required this.icon, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7, color: Colors.black38),
          top: BorderSide(width: 0.7, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        color: Colors.grey[100],
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.black38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            const Icon(Icons.chevron_right, size: 16,)
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}