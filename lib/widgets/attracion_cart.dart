import 'package:codelub_2/models/attraction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../colors.dart';
import '../screens/details_page.dart';

class AttracionCard extends StatelessWidget {
  final AttractionModel attractionModel;
  const AttracionCard(this.attractionModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(
                  selectedModel: attractionModel,
                )));
      },
      child: Container(
        width: 180,
        margin: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(attractionModel.imgPath!),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.5)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(attractionModel.name!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Text(attractionModel.location!,
                          style: const TextStyle(color: mainYellow))
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
