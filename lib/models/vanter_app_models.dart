class Vent {
  final String id;
  final DateTime createdAt;
  final String title;
  final String rawTranscript;
  final Note? note;
  final List<Todo>? todos;
  final List<Reminder>? reminders;

  Vent({
    required this.id,
    required this.createdAt,
    required this.title,
    required this.rawTranscript,
    this.note,
    this.todos,
    this.reminders,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "createdAt": createdAt,
      "title": title,
      "rawTranscript": rawTranscript,
      "note": note,
      "todos": todos,
      "reminders": reminders,
    };
  }
}

class Note {
  final String id;
  final String title;
  final String body;

  Note({required this.id, required this.title, required this.body});

  Map<String, dynamic> toMap() {
    return {"id": id, "title": title, "body": body};
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(id: map["id"], title: map["title"], body: map["body"]);
  }
}

class Todo {
  final String id;
  final DateTime createdAt;
  final String task;
  bool isChecked;

  Todo({
    required this.id,
    required this.createdAt,
    required this.task,
    required this.isChecked,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "createdAt": createdAt,
      "task": task,
      "isChecked": isChecked,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map["id"],
      createdAt: map["createdAt"],
      task: map["task"],
      isChecked: map["isChecked"],
    );
  }
}

class Reminder {
  final String id;
  final DateTime createdAt;
  final String event;
  final DateTime dateToRemind;

  Reminder({
    required this.id,
    required this.createdAt,
    required this.event,
    required this.dateToRemind,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "createdAt": createdAt,
      "event": event,
      "dateToRemind": dateToRemind,
    };
  }

  factory Reminder.fromMap(Map<String, dynamic> map) {
    return Reminder(
      id: map["id"],
      createdAt: map["createdAt"],
      event: map["event"],
      dateToRemind: map["dateToRemind"],
    );
  }
}
