import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:navapp/models/building_model.dart';

class BuildingScreen extends StatelessWidget {
  final Building building;
  
  const BuildingScreen({
    Key? key, 
    required this.building,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ..._buildBackground(context, building),
          _buildBuildingInformation(context),
          Positioned(
            bottom: 50,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15.0),
                      backgroundColor: const Color(0xFFFF7272),
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.425,
                        50,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    onPressed: () {}, child:
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Go to ',
                          style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                         ),
                        const TextSpan(
                         text: 'Map',
                        ),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned _buildBuildingInformation(BuildContext context) {
    return Positioned(
          bottom: 150,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  building.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                RatingBar.builder(
                  initialRating: 3.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  ignoreGestures: true,
                  itemCount: 5,
                  itemSize: 20,
                  unratedColor: Colors.white,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.star,
                      color: Colors.green,
                    );
                  }, 
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(height:20),
                Text(building.info,
                  maxLines: 8,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(height: 1.75, color: Colors.white),
                ),
              ],
            ),
          ),
        );
  }

  List<Widget> _buildBackground(
    context, 
    building,) {
    return [
      Container(
          height: double.infinity, 
          color: const Color(0xFF000B49),
        ),
        Image.asset(
            building.imagePath, 
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.cover,
          ),
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Color(0xFF000B49),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 0.5],
                ),
              ),
            ),
          ),];
  }
}