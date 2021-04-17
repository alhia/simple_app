import 'package:flutter/material.dart';
import 'package:vivenu_code_test/models/event.dart';
import 'package:vivenu_code_test/widgets/badge.dart';

class EventItem extends StatelessWidget {
  const EventItem({Key key, @required this.event, @required this.isSoonest}) : super(key: key);

  final Event event;
  final bool isSoonest;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Row(
        children: [
          Text(
            event.name,
            style: theme.textTheme.headline6,
          ),
          if (isSoonest) Badge(title: 'Soonest'),
        ],
      ),
      subtitle: Text(event.timeAgo, style: theme.textTheme.subtitle2),
      trailing: Text(
        event.priceWithCurrency,
        style: theme.textTheme.bodyText2,
      ),
    );
  }
}
