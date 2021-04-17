import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:vivenu_code_test/models/event.dart';

class FakeApiService {
  static Future<List<Event>> getEvents() async {
    String data = await rootBundle.loadString("assets/upcoming_events_mock.json");
    final List jsonResult = jsonDecode(data)["events"];
    final List<Event> events = jsonResult.map((event) => Event.fromJson(event)).toList();
    return events;
  }
}
