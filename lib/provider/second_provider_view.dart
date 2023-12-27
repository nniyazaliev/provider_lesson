import 'package:flutter/material.dart';

class SecondProviderView extends StatefulWidget {
  final List<int> listSandarKelsin;

  const SecondProviderView({
    required this.listSandarKelsin,
    super.key,
  });

  @override
  State<SecondProviderView> createState() => _SecondProviderViewState();
}

class _SecondProviderViewState extends State<SecondProviderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second View'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              widget.listSandarKelsin.last.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.listSandarKelsin.length,
              itemBuilder: (context, index) {
                return Text(
                  widget.listSandarKelsin[index].toString(),
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
          final akyrkySan = widget.listSandarKelsin.last;
          widget.listSandarKelsin.add(akyrkySan + 1);

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
