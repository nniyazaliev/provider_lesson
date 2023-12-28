import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/provider/first_provider_view.dart';
import 'package:provider_lesson/provider/sandar_provider.dart';

void main() {
  runApp(const SetStateManage());
}

class SetStateManage extends StatelessWidget {
  const SetStateManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return SandarProvider();
          },
        )
      ],
      child: const MaterialApp(
        home: FirstProviderView(),
      ),
    );
  }
}
