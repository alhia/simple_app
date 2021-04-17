import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:vivenu_code_test/constants.dart';
import 'package:vivenu_code_test/models/event.dart';
import 'package:vivenu_code_test/views/events/events_viewmodel.dart';
import 'package:vivenu_code_test/widgets/event_item.dart';

class EventsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ViewModelBuilder<EventsViewModel>.reactive(
      viewModelBuilder: () => EventsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            Icon(
              Icons.calendar_today_outlined,
              color: kWhite,
              size: 20,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'Events',
              style: theme.textTheme.bodyText2,
            ),
          ],
        )),
        body: model.isBusy
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SafeArea(
                child: ListView.separated(
                  itemBuilder: (context, i) {
                    final now = DateTime.now();

                    final soonestEvent = model.data.reduce(
                      (a, b) => DateTime.parse(a.date).difference(now).abs() < DateTime.parse(b.date).difference(now).abs() ? a : b,
                    );

                    final Event event = model.data[i];
                    return EventItem(
                      event: event,
                      isSoonest: soonestEvent == event,
                    );
                  },
                  itemCount: model.data.length,
                  separatorBuilder: (context, i) => Divider(
                    color: kBlue,
                    thickness: 1.0,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                ),
              ),
      ),
    );
  }
}

// ViewModel
