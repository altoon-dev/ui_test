import 'package:flutter/material.dart';

class DefaultDivider extends StatelessWidget {
  const DefaultDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey,
      thickness: 0.5,
      indent: 5,
      endIndent: 5,
    );
  }
}