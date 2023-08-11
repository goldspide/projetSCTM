import 'package:client/config/core.dart';
import 'package:client/models/category.dart';

class CategoryController {
  static Future<Category?> getById(String catId) async {
    try {
      final response = await http!.get('category/$catId');
      return Category.fromMap(response.data);
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<List<Category>?> getAll() async {
    try {
      final response = await http!.get('category');
      return (response.data as List).map((e) => Category.fromMap(e)).toList();
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<Category?> create(Category category) async {
    try {
      final data = category.asMap();
      final response = await http!.post('category', data: data);
      return Category.fromMap(response.data);
    } catch (err) {
      print(err);
      return null;
    }
  }
}
