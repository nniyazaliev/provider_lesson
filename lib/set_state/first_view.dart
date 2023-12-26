import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  List<int> listSandar = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First View'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              listSandar.last.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listSandar.length,
              itemBuilder: (context, index) {
                return Text(
                  listSandar[index].toString(),
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final akyrkySan = listSandar.last;
          listSandar.add(akyrkySan + 1);

          setState(() {});
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
