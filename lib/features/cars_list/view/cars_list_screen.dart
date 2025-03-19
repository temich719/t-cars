import 'package:flutter/material.dart';
import 'package:t_cars/features/advertisement/view/advertisement.dart';
import 'package:t_cars/features/cars_list/widgets/widgets.dart';

const String carMockUrl = 'lib/img/testImg.jpg';

List<AdvertisementWidget> ads = List.generate(10, (i) {
  return AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  );
});

class CarsListScreen extends StatefulWidget {
  const CarsListScreen({super.key});

  @override
  State<CarsListScreen> createState() => _CarsListScreenState();
}

class _CarsListScreenState extends State<CarsListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarsListWidget(ads: ads, scrollController: _scrollController),
        FilterButton(scrollController: _scrollController),
      ],
    );
  }
}
