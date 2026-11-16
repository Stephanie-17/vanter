import 'package:hive_flutter/hive_flutter.dart';
import 'package:vanter/models/vanter_app_models.dart';

class VanterNoteService {
  final Box _box = Hive.box("notes");

  Future<void> saveNote(Note note) {
    var convertedNote = note.toMap();
   
    return _box.put(note.id, convertedNote);
  }

  Note? getNote(String id) {
    final raw = _box.get(id);
    if (raw == null) {
      return null;
    }
    final map = Map<String, dynamic>.from(
      raw,
    ); //converts a raw Map<dynamic, dynamic> to a Map<String, dynamic>
    final convertedNote = Note.fromMap(map); //this converts a map to a Note
    
    return convertedNote;
  }

  List<Note> getAllNotes() {
    var notes = _box.values.map((note) {
      final map = Map<String, dynamic>.from(note);
      return Note.fromMap(map);
    });

    return notes.toList();
  }

  Future<void> deleteNote(String id) {
    return _box.delete(id);
  }
}
