import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_lesson/provider/sandar_provider.dart';
import 'package:provider_lesson/set_state/second_view.dart';

class FirstProviderView extends StatelessWidget {
  const FirstProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SandarProvider>(
      builder: (context, sandardynProvidery, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('First View'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  sandardynProvidery.listSandar.last.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: sandardynProvidery.listSandar.length,
                  itemBuilder: (context, index) {
                    return Text(
                      sandardynProvidery.listSandar[index].toString(),
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SecondView(
                            listSandarKelsin: sandardynProvidery.listSandar);
                      },
                    ),
                  );
                },
                child: const Text(
                  'Second page',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
              size: 40,
            ),
          ),
        );
      },
    );
  }
}
