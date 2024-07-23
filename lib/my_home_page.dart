import 'package:flutter/material.dart';

import 'data/data_items.dart';
import 'models/screen_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<ScreenItem> screenDataList;
  @override
  void initState() {
    super.initState();
    screenDataList = getScreenItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter UI'),
      ),
      body: ListView.builder(itemCount: screenDataList.length, itemBuilder: (BuildContext context, int index) {
        ScreenItem screenItem =  screenDataList[index];
        return ListTile(
          onTap: (){
            Navigator.of(context)
                .pushNamed(screenItem.screenName);
          },
          title: Text(screenItem.label),
          shape: const Border(
            bottom: BorderSide(),
          ),
        );
      }),
    );
  }
}
