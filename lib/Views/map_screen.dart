import 'package:flutter/material.dart';
import 'package:navapp/models/building_model.dart';

class MapScreen extends StatelessWidget {
  final Building building;
  
  const MapScreen(BuildContext context, {
    Key? key, 
    required this.building,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: const Color(0xFF000B49),
          ),
          Image.network(
            building.imagePath,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1.0,
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
          ),
        ],
      ),
    );
  }
}