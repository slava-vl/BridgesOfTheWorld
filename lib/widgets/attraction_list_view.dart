import 'package:codelub_2/widgets/attracion_cart.dart';
import 'package:flutter/material.dart';

import '../dummy_data.dart';

class AttractionListView extends StatelessWidget {
  const AttractionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            padding: EdgeInsets.only(left: 10),
            itemCount: attractions.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var currentAttraction = attractions[index];
              return AttracionCard(currentAttraction);
            }));
  }
}
