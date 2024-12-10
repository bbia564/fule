import 'package:intl/intl.dart';

class NoteEntity {
  int id;
  DateTime createdTime;
  String title;
  String content;

  NoteEntity({ required this.id,required this.createdTime, required this.title, required this.content});


  factory NoteEntity.fromJson(Map<String, dynamic> json) {
    return NoteEntity(
      id: json['id'],
      createdTime: DateTime.parse(json['createdTime']),
      title: json['title'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdTime': createdTime.toIso8601String(),
      'title': title,
      'content': content,
    };
  }

  String get createdTimeString {
    return DateFormat('yyyy-MM-dd HH:mm').format(createdTime);
  }
}