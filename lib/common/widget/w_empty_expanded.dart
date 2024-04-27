import 'package:flutter/material.dart';

final emptyExpanded = EmptyExpanded();

class EmptyExpanded extends StatelessWidget {
  final int flex;

  const EmptyExpanded({Key? key, this.flex = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(),
    );
  }
}
