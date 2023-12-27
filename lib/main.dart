import 'package:flutter/material.dart';
import 'package:provider_lesson/provider/first_provider_view.dart';

void main() {
  runApp(const SetStateManage());
}

class SetStateManage extends StatelessWidget {
  const SetStateManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstProviderView(),
    );
  }
}
