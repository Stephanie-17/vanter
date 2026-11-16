import 'package:flutter/material.dart';
import 'package:vanter/models/vanter_app_models.dart';
import 'package:vanter/providers/vanter_note_service.dart';

class VanterSplashscreen extends StatelessWidget {
  const VanterSplashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Save me"),
              onPressed: () {
                VanterNoteService().saveNote(
                  Note.fromMap({
                    "id": "0001",
                    "title": "A new note",
                    "body": "I am wirting a new note",
                  }),
                );
              },
            ),

            ElevatedButton(
              onPressed: () {
                VanterNoteService().getNote("0001");
              },
              child: Text("get me"),
            ),
          ],
        ),
      ),
    );
  }
}
