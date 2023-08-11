class Notification{
  String? object;
  String? content;

  Notification({this.object, this.content});
  Notification.fromMap(Map map)
      : this(object: map['object'], content: map['content']);
  Map<String, dynamic> asMap() =>
      {'object': object, 'content': content};
  static notNull(dynamic element) => element != null;
}