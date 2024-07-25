import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/core/constant.dart';
import 'package:one_project_iti/note_app/core/hive_helper.dart';
import 'package:one_project_iti/note_app/data/note_model.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => NoteItemWidget(
                noteitem: HiveHelper.noteList[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: HiveHelper.noteList.length,
            ),
          )
        ],
      ),
    );
  }
}

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({
    super.key,
    required this.noteitem,
  });
  final NoteModel noteitem;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: itemNoteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.circle,
                color: secondNoteColor,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Title',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: secondNoteColor,
                radius: 18,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    size: 18,
                    color: itemNoteColor,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: secondNoteColor,
                radius: 18,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_outline_rounded,
                    size: 18,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'skdhfjkahkdfjhasdklhfjklasdhjkfhdjklahfajkdhfjkhdgkdfkjghskjhgskjlsgklhgjklshgjklshkghsdfklh',
            style: TextStyle(
              fontSize: 20,
              color: secondNoteColor,
            ),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '7/10/2024',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
