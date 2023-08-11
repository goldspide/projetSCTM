class Agence{
  String? id;
  String? code;
  String? description;
  String? phone;
  String? email;
  String? address;

  Agence({
    this.id,
    this.code,
    this.description,
    this.phone,
    this.email,
    this.address
});
  Agence.fromMap(Map map): this (
    id: map['_id'],
    code: map['code'],
    description: map['description'],
    phone: map['phone'],
    email: map['email'],
    address: map['address']
  );

  Map<String, dynamic> asMap() => {
    '_id':id,
    'code': code,
    'description':description,
    'phone': phone,
    'email': email,
    'address': address
  };
  static notNull(dynamic element) => element !=null;
}