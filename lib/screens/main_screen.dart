import 'package:flutter/cupertino.dart';
import 'package:t_cars/components/advertisement.dart';
import 'package:t_cars/components/filter_button.dart';

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

class MainScreenContainer extends StatefulWidget {
  const MainScreenContainer({super.key});

  @override
  State<MainScreenContainer> createState() => _MainScreenContainerState();
}

class _MainScreenContainerState extends State<MainScreenContainer> {
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
        ListView.builder(
          controller: _scrollController,
          itemCount: ads.length,
          itemBuilder: (context, index) {
            return ads[index];
          },
        ),
        FilterButton(scrollController: _scrollController),
      ],
    );
  }
}
