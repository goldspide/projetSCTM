class Category {
  String? id;
  String? label;
  String? description;

  Category({this.id, this.label, this.description});
  Category.fromMap(Map map)
      : this(
          id: map['_is'],
          label: map['label'],
          description: map['description'],
        );
  Map<String, dynamic> asMap() =>
      {'_id': id, 'label': label, 'description': description};
  static notNull(dynamic element) => element != null;
}
