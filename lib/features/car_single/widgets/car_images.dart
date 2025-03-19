import 'package:flutter/material.dart';

class CarImagesWidget extends StatefulWidget {
  const CarImagesWidget({
    super.key,
    required this.carImages,
    required this.imageContainerHeight,
  });

  final double imageContainerHeight;
  final List<Image> carImages;

  @override
  State<CarImagesWidget> createState() => _CarImagesWidgetState();
}

class _CarImagesWidgetState extends State<CarImagesWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.imageContainerHeight,
      child: PageView(
        children:
        widget.carImages.map((image) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: image,
            ),
          );
        }).toList(),
      ),
    );
  }
}