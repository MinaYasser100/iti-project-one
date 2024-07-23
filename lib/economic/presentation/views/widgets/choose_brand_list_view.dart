import 'package:flutter/material.dart';
import 'package:one_project_iti/economic/presentation/data/brand_model.dart';

import 'brand_item.dart';

class ChooseBrandListView extends StatelessWidget {
  const ChooseBrandListView({
    super.key,
  });
  static const List<BrandModel> brandModelsList = [
    BrandModel(brandName: 'Adidas', brandImage: 'assets/images/adidas.png'),
    BrandModel(brandName: 'Nike', brandImage: 'assets/images/nike.png'),
    BrandModel(brandName: 'Fila', brandImage: 'assets/images/Fila.jpg'),
    BrandModel(brandName: 'Puma', brandImage: 'assets/images/puma.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => BrandItem(
          brandModel: brandModelsList[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: brandModelsList.length,
      ),
    );
  }
}
