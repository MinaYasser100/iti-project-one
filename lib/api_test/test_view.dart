import 'package:flutter/material.dart';
import 'package:one_project_iti/api_test/dio_api/dio_api.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    await DioApi.getHttp();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => Text(DioApi.users[index].name),
              separatorBuilder: (c, i) => const SizedBox(
                height: 15,
              ),
              itemCount: DioApi.users.length,
            ),
          ),
        ],
      ),
    );
  }
}
