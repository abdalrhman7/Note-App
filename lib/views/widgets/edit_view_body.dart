import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'color_list_view.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    String? title, content;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              note.title = title ?? note.title;
              note.subTitle = content ?? note.subTitle;
              note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          CustomTextField(
            onChanged: (value) {
             print('${note.color}+++++++++++++++++++++++++') ;
              title = value;
            },
            hint: note.title,
          ),
          const SizedBox(height: 18),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
           EditNoteColorsList(note: note),
        ],
      ),
    );
  }
}

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex ;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color)) ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: kColors[index],
                )),
          );
        },
      ),
    );
  }
}
