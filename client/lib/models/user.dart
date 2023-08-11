import 'package:client/models/agence.dart';
import 'package:client/models/category.dart';

class User {
  String? id;
  String? fullName;
  String? gender;
  DateTime? dateofBirth;
  String? quater;
  String? city;
  String? email;
  String? password;
  String? role;
  String? phone;
  Category? category;
  Agence? agency;

  User(
      {
        this.id,this.fullName,
      this.gender,
      this.dateofBirth,
      this.quater,
      this.city,
      this.email,
      this.password,
      this.role,
      this.phone,
      this.category,
      this.agency});
  User.fromMap(Map map): this(
    fullName: map['fullName'],
    gender: map['gender'],
    dateofBirth: map['dateofBirth'],
    quater:  map['quater'],
    city: map['city'],
    email: map['email'],
    password: map['password'],
    role: map['role'],
    phone: map['phone'],
    category: map['category'],
    agency: map['agency'],
  );
  Map<String, dynamic> asMap() => {
    '_id': id,
    'fullName': fullName,
    'gender': gender,
    'dateofBirth': dateofBirth,
    'quater': quater,
    'city': city,
    'email': email,
    'password': password,
    'role': role,
    'phone': phone,
    'category': category,
    'agency': agency
  };
  static notNull(dynamic element) => element !=null;
}
