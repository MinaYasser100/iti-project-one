import 'package:flutter/material.dart';
import 'package:one_project_iti/economic/presentation/views/func/economic_text_form_field.dart';

class SearchEconomicWidget extends StatelessWidget {
  const SearchEconomicWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: economicTextFormField(),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(7),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
