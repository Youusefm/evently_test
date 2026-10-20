import 'package:evently_test/core/widgets/tab_item.dart';
import 'package:flutter/material.dart';

import '../../models/catergory_model.dart';

class CustomTabBar extends StatefulWidget {
  CustomTabBar({super.key, required this.categoryList});
  List<CategoryModel> categoryList;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.categoryList.length,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        dividerColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        isScrollable: true,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        tabs: widget.categoryList
            .map(
              (catergory) => TabItem(
                category: catergory,
                isSelected:
                    widget.categoryList.indexOf(catergory) == currentIndex,
              ),
            )
            .toList(),
      ),
    );
  }
}
