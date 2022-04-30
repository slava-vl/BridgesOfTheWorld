import 'package:codelub_2/colors.dart';
import 'package:codelub_2/dummy_data.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  final _bottomBarItems = bottomBarListItems;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_bottomBarItems.length, (index) {
            return IconButton(
              icon: Icon(_bottomBarItems[index].icon,
                  color: _bottomBarItems[index].isSelected
                      ? mainYellow
                      : Colors.grey),
              onPressed: () {
                setState(() {
                  _bottomBarItems.forEach((element) {
                    element.isSelected = element == _bottomBarItems[index];
                  });
                });
              },
            );
          }),
        ));
  }
}
