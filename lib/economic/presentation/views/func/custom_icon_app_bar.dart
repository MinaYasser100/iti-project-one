import 'package:flutter/material.dart';

import '../../../../core/constant.dart';

CircleAvatar customIconAppBar({required IconData icon}) {
  return CircleAvatar(
    backgroundColor: economicGrayColor,
    child: IconButton(
      onPressed: () {},
      icon: Icon(icon),
    ),
  );
}
