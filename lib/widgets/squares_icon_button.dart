import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SquaresIconButton extends StatelessWidget {
  final IconData fontAwesomeIconsName;
  const SquaresIconButton({
    super.key,
    required this.fontAwesomeIconsName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      height: 50,
      width: 50,
      child: SizedBox(
        child: FaIcon(fontAwesomeIconsName),
      ),
    );
  }
}
