import 'package:flutter/material.dart';
import 'package:one_project_iti/economic/presentation/data/proudect_model.dart';

import 'proudect_item.dart';

class ProudectsGridViewWidget extends StatelessWidget {
  const ProudectsGridViewWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<ProudectModel> proudectsList =
        jsonList.map((element) => ProudectModel.fromJson(element)).toList();
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.58,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ProudectItem(
        proudectModel: proudectsList[index],
      ),
      itemCount: proudectsList.length,
    );
  }
}

List<Map<String, String>> jsonList = [
  {
    'image':
        'https://www.nextdirect.com/nxtcms/resource/blob/5821504/ee0fc6a294be647924fa5f5e7e3df8e9/hoodies-data.jpg',
    'title': 'Navy Blue Zip Up Hoodie',
    'price': '500',
  },
  {
    'image':
        'https://i.pinimg.com/736x/5f/a5/29/5fa5298d9ab53ebc2c5d53131502b157.jpg',
    'title': 'Slate Grey Lightweight Zip Up Hoodie',
    'price': '700',
  },
  {
    'image':
        'https://media.boohoo.com/i/boohoo/bmm18559_sage_xl/herr-sage-limited-oversized-hoodie/?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit',
    'title': 'Green Regular Fit Jersey Cotton Rich Crew Sweatshirt',
    'price': '799',
  },
  {
    'image':
        'https://cdn.shopify.com/s/files/1/0057/6772/5138/files/240201_IND_52_1907-MHO36003W_GRAIN.jpg?v=1710992935',
    'title': 'Ecru/White Oversized Jersey Cotton Rich Crew Sweatshirt',
    'price': '1000',
  },
  {
    'image': 'https://dfcdn.defacto.com.tr/376/B4446AX_24SP_BK81_01_02.jpg',
    'title': 'Reiss Washed Black Alistar Cotton Crew Neck Sweatshirt',
    'price': '1200',
  },
  {
    'image':
        'https://xcdn.next.co.uk/common/items/default/default/itemimages/altitemzoom/U71948s.jpg?im=Resize,width=480',
    'title': 'Tog 24 Grey Revive Fleece Jacket',
    'price': '800',
  },
];
