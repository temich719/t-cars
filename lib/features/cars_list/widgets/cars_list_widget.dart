import 'package:flutter/material.dart';
import 'package:t_cars/features/car_single/view/car_single.dart';
import '../../advertisement/view/advertisement.dart';

class CarsListWidget extends StatefulWidget {
  const CarsListWidget({
    super.key,
    required this.ads,
    required this.scrollController,
  });

  final List<AdvertisementWidget> ads;
  final ScrollController scrollController;

  @override
  State<CarsListWidget> createState() => _CarsListWidgetState();
}

class _CarsListWidgetState extends State<CarsListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: widget.scrollController,
      itemCount: widget.ads.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            CarSingle(advCarWidget: widget.ads[index]),
                  ),
                ),
              },
          child: widget.ads[index],
        );
      },
    );
  }
}
