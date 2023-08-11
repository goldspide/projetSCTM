import 'package:client/models/template.dart';
import 'package:dio/dio.dart';

class UemplateController {
  static Future<Template?> getById(String templateId) async {
    try{
      final response = await http!.get('template/$templateId');
      return Template.fromMap(response.data['datas']);
    }catch (err){
      print(err);
      return null;
    }
  }
  static Future<Template?> delete(String id) async {
    var url = Uri.parse('http://localhost:3006/Template/$id');
    try{
      final response = await http!.delete(url);
      // return Template.fromMap(response.data['datas']);
    }catch(err){

    }
  }
}