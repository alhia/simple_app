import 'package:flutter/material.dart';
import 'package:vivenu_code_test/constants.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key key,
    @required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: kDarkGreen,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2.0,
          horizontal: 6.0,
        ),
        child: Text(
          title,
          style: theme.textTheme.subtitle2.copyWith(color: kLightGreen),
        ),
      ),
    );
  }
}
