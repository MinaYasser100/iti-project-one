import 'package:flutter/material.dart';
import 'package:one_project_iti/messenger/views/func/messenger_app_bar.dart';
import 'package:one_project_iti/messenger/views/widget/messenger_home_body.dart';

class MessengerHomeView extends StatelessWidget {
  const MessengerHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: messengerAppBar(),
      body: const MessengerHomeBody(),
    );
  }
}
