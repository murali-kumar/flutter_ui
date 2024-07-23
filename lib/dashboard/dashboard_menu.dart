import 'package:flutter/material.dart';

import '../data/data_items.dart';
import '../models/screen_item.dart';

class DashboardMenu extends StatefulWidget {
  const DashboardMenu({super.key});

  @override
  State<DashboardMenu> createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
  late List<ScreenItem> screenDataList;
  @override
  void initState() {
    super.initState();
    screenDataList = getDashboardScreenItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('DashBoard'),
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
