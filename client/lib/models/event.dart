import 'package:client/models/template.dart';

class Event {
  String? title;
  String? description;
  DateTime? dateEvent;
  bool? hasPassed;
  Template? template;
  Event(
      {this.title,
      this.description,
      this.dateEvent,
      this.hasPassed,
      this.template});
  Event.fromMap(Map map)
      : this(
            title: map['title'],
            description: map['description'],
            dateEvent: map['dateEvent'],
            hasPassed: map['hasPassed'],
            template: map['template']);
  Map<String, dynamic> asMap() => {
        'title': title,
        'description': description,
        'dateEvent': dateEvent,
        'hasPassed': hasPassed,
        'template': template
      };
  static notNull(dynamic element) => element != null;
}
