import 'package:client/config/core.dart';
import 'package:client/models/template.dart';

class UemplateController {
  static Future<Template?> getById(String templateId) async {
    try {
      final response = await http!.get('template/$templateId');
      return Template.fromMap(response.data['datas']);
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<bool?> delete(String id) async {
    try {
      final response = await http!.delete("template/$id");
      if (response.statusCode == 201) {
        return true;
      }
      return false;
    } catch (err) {
      return false;
    }
  }

  static Future<List<Template>?> getAll() async {
    try {
      final response = await http!.get('template');
      return (response.data['datas'] as List)
          .map((e) => Template.fromMap(e))
          .toList();
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<Template?> create(Template temp) async {
    try {
      final data = temp.asMap();
      final response = await http!.post('template', data: data);
      return Template.fromMap(response.data['datas']);
    } catch (err) {
      print(err);
      return null;
    }
  }
}
