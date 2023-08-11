import 'package:client/models/notification.dart';
import 'package:dio/dio.dart';

class NotificationController {
  static Future<Notification?> getById(String NotificationId) async {
    try{
      final response = await http!.get('Notification/$NotificationId');
      return Notification.fromMap(response.data['datas']);
    }catch (err){
      print(err);
      return null;
    }
  }
}