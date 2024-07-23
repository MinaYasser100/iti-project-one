import 'package:flutter/material.dart';
import 'package:one_project_iti/economic/presentation/views/func/custom_icon_app_bar.dart';

class CustomEconomicHeader extends StatelessWidget {
  const CustomEconomicHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customIconAppBar(icon: Icons.menu_rounded),
        customIconAppBar(icon: Icons.shopping_bag_outlined),
      ],
    );
  }
}
