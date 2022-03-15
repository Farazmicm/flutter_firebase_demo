class Message {
  final String text;
  final DateTime date;
  final String id;

  Message(this.id,this.text, this.date);

  Message.fromJson(Map<dynamic, dynamic> json)
      : date = DateTime.parse(json['date'] as String),
        text = json['text'] as String,
  id = json['id'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
    'date': date.toString(),
    'text': text,
    'id':id
  };

}
