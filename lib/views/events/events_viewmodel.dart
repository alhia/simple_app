import 'package:stacked/stacked.dart';
import 'package:vivenu_code_test/models/event.dart';
import 'package:vivenu_code_test/services/fake_api_service.dart';

class EventsViewModel extends FutureViewModel<List<Event>> {
  @override
  Future<List<Event>> futureToRun() => _getEvents();

  Future<List<Event>> _getEvents() async {
    final List<Event> events = await FakeApiService.getEvents();
    return events;
  }
}
