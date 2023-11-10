import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_view_body.dart';

import '../models/note_model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);

  final NoteModel note ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  EditViewBody(note: note),
    );
  }
}
