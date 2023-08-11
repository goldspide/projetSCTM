import 'package:client/models/category.dart';
import 'package:dio/dio.dart';

class CategoryController {
  static Future<Category?> getById(String CategoryId) async {
    try{
      final response = await http!.get('Category/$CategoryId');
      return Category.fromMap(response.data['datas']);
    }catch (err){
      print(err);
      return null;
    }
  }
}