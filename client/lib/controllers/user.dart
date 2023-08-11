import 'package:client/models/user.dart';
import 'package:dio/dio.dart';

class UserController {
  static Future<User?> getById(String userId) async {
    try{
      final response = await http!.get('user/$userId');
      return User.fromMap(response.data['datas']);
    }catch (err){
      print(err);
      return null;
    }
  }
}