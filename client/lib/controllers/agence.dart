import 'package:client/models/agence.dart';
import 'package:dio/dio.dart';

class AgenceController {
  static Future<Agence?> getById(String AgenceId) async {
    try{
      final response = await http!.get('Agence/$AgenceId');
      return Agence.fromMap(response.data['datas']);
    }catch (err){
      print(err);
      return null;
    }
  }
}