import 'package:client/config/core.dart';
import 'package:client/models/notification.dart';

class NotificationController {
  static Future<Notification?> getById(String nId) async {
    try {
      final response = await http!.get('notification/$nId');
      return Notification.fromMap(response.data['datas']);
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<List<Notification>?> getAll() async {
    try {
      final response = await http!.get('notification');
      return (response.data['datas'] as List)
          .map((e) => Notification.fromMap(e))
          .toList();
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<Notification?> create(Notification notification) async {
    try {
      final data = notification.asMap();
      final response = await http!.post('notification', data: data);
      return Notification.fromMap(response.data['datas']);
    } catch (err) {
      print(err);
      return null;
    }
  }
}
