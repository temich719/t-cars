import 'package:flutter/material.dart';
import 'package:t_cars/features/car_single/view/car_single.dart';
import 'package:t_cars/features/car_single/widgets/widget.dart';

class CarSingleListView extends StatefulWidget {
  const CarSingleListView({super.key, required this.carWidget});

  final CarSingle carWidget;

  @override
  State<CarSingleListView> createState() => _CarSingleListViewState();
}

class _CarSingleListViewState extends State<CarSingleListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(bottom: 70.0),
      children: [
        if (widget.carWidget.advCarWidget.carsImages.isNotEmpty)
          CarImagesWidget(
            carImages: widget.carWidget.advCarWidget.carsImages,
            imageContainerHeight: 330.0,
          ),
        CarMainInfo(widget: widget.carWidget),
        CarSingleDivider(
          dividerPadding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CarSingleIconAction(
              actionIcon: Icons.share,
              text: 'Share',
              onIconPressed: () => {},
            ),
            CarSingleIconAction(
              actionIcon: Icons.favorite,
              text: 'To favorites',
              onIconPressed: () => {},
            ),
          ],
        ),
        CarSingleDivider(dividerPadding: EdgeInsets.all(10.0)),
        CarSingleDescription(widget: widget.carWidget),
      ],
    );
  }
}
