class Template {
  String? object;
  String? content;
  String? type;
  Template({this.object, this.content, this.type});
  Template.fromMap(Map map)
      : this(object: map['object'], content: map['content'], type: map['type']);
  Map<String, dynamic> asMap() =>
      {'object': object, 'content': content, 'type': type};
  static notNull(dynamic element) => element != null;
}
