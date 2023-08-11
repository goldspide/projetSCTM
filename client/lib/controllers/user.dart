import 'package:client/config/core.dart';
import 'package:client/models/user.dart';

class UserController {
  static Future<User?> getById(String userId) async {
    try {
      final response = await http!.get('user/$userId');
      return User.fromMap(response.data['datas']);
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<List<User>?> getAll() async {
    try {
      final response = await http!.get('user');
      return (response.data['datas'] as List)
          .map((e) => User.fromMap(e))
          .toList();
    } catch (err) {
      print(err);
      return null;
    }
  }

  static Future<User?> create(User user) async {
    try {
      final data = user.asMap();
      final response = await http!.post('user', data: data);
      return User.fromMap(response.data['datas']);
    } catch (err) {
      print(err);
      return null;
    }
  }
}
