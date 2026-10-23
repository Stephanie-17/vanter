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
    this.reminders
  });
}

class Note {
  final String id;
  final String title;
  final String body;

  Note({required this.id, required this.title, required this.body});
}

class Todo {
  final String id;
  final String task;
  final bool isChecked;

  Todo({required this.id, required this.task, required this.isChecked});
}

class Reminder {
  final String id;
  final String event;
  final DateTime dateToRemind;

  Reminder({required this.id, required this.event, required this.dateToRemind});
}
