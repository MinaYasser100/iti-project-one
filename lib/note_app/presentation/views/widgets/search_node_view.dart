import 'package:flutter/material.dart';
import 'package:one_project_iti/note_app/presentation/views/widgets/search_node_body_view.dart';

import '../func/scaffold_background_color.dart';

class SearchNodeView extends StatelessWidget {
  const SearchNodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: scaffoldBackgroundColor(),
        ),
        child: const SearchNodeBodyView(),
      ),
    );
  }
}
