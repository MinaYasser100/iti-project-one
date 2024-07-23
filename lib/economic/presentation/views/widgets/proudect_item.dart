import 'package:flutter/material.dart';
import 'package:one_project_iti/economic/presentation/data/proudect_model.dart';

class ProudectItem extends StatelessWidget {
  const ProudectItem({
    super.key,
    required this.proudectModel,
  });
  final ProudectModel proudectModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              width: MediaQuery.sizeOf(context).width * 0.40,
              height: 200,
              child: Image(
                image: NetworkImage(
                  proudectModel.image,
                ),
                fit: BoxFit.fill,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Text(
          proudectModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '\$${proudectModel.price}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )
      ],
    );
  }
}
