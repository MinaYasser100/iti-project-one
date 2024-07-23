import 'package:flutter/material.dart';
import 'package:one_project_iti/economic/presentation/views/func/collection_title.dart';

import 'choose_brand_list_view.dart';
import 'custom_economic_header.dart';
import 'economic_text_form_field.dart';

class EconomciBodyView extends StatelessWidget {
  const EconomciBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomEconomicHeader(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Hello',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'welcome to laza',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 15,
          ),
          const SearchEconomicWidget(),
          const SizedBox(
            height: 15,
          ),
          collectionTitle('Choose Brand'),
          const SizedBox(
            height: 10,
          ),
          const ChooseBrandListView(),
          const SizedBox(
            height: 15,
          ),
          collectionTitle('New Arraival'),
        ],
      ),
    );
  }
}
