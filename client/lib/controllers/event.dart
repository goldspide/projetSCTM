import 'package:client/models/event.dart';
import 'package:dio/dio.dart';

class EventsController {
  static Future<Event?> getById(String EventsId) async {
    try{
      final response = await http!.get('Events/$EventsId');
      return Event.fromMap(response.data['datas']);
    }catch (err){
      print(err);
      return null;
    }
  }
}