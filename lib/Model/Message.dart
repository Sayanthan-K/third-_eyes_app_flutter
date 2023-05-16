// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Message {
  final String id;
  final String messageStatus;
  final String time;
  final String date;
  Message({
    required this.id,
    required this.messageStatus,
    required this.time,
    required this.date,
  });



  Message copyWith({
    String? id,
    String? messageStatus,
    String? time,
    String? date,
  }) {
    return Message(
      id: id ?? this.id,
      messageStatus: messageStatus ?? this.messageStatus,
      time: time ?? this.time,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'messageStatus': messageStatus,
      'time': time,
      'date': date,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      id: map['id'] as String,
      messageStatus: map['messageStatus'] as String,
      time: map['time'] as String,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) => Message.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Message(id: $id, messageStatus: $messageStatus, time: $time, date: $date)';
  }

  @override
  bool operator ==(covariant Message other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.messageStatus == messageStatus &&
      other.time == time &&
      other.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      messageStatus.hashCode ^
      time.hashCode ^
      date.hashCode;
  }
}
