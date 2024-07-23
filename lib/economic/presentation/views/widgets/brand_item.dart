import 'package:flutter/material.dart';
import 'package:one_project_iti/economic/presentation/data/brand_model.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({
    super.key,
    required this.brandModel,
  });
  final BrandModel brandModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Image.asset(
              brandModel.brandImage,
              width: 40,
              height: 30,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            brandModel.brandName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
