import 'package:client/config/core.dart';
import 'package:client/models/event.dart';

class EventsController {
  static Future<Event?> getById(String eventId) async {
    try {
      final response = await http!.get('event/$eventId');
      return Event.fromMap(response.data['datas']);
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<List<Event>?> getAll() async {
    try {
      final response = await http!.get('event');
      return (response.data['datas'] as List)
          .map((e) => Event.fromMap(e))
          .toList();
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<Event?> create(Event event) async {
    try {
      final data = event.asMap();
      final response = await http!.post('event', data: data);
      return Event.fromMap(response.data['datas']);
    } catch (err) {
      print(err);
      return null;
    }
  }
}
