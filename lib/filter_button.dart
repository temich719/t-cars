import 'package:flutter/material.dart';

import 'advertisement.dart';

const String defaultBtnText = 'Filters';

const String carMockUrl = 'lib/img/testImg.jpg';

List<AdvertisementWidget> ads = [
  AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  ),
  AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  ),
  AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  ),
  AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  ),
  AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  ),
  AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  ),
  AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  ),
  AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  ),
  AdvertisementWidget(
    name: 'Toyota Camry 2020',
    price: 25000,
    description: 'A well-maintained car with low mileage.',
    carsImages: [
      Image.asset(carMockUrl, fit: BoxFit.cover),
      Image.asset(carMockUrl, fit: BoxFit.cover),
    ],
  ),
];

class FilterButton extends StatefulWidget {
  const FilterButton({super.key});

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  late ScrollController _scrollController;
  String _buttonText = defaultBtnText;
  double _btnSize = 110.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(() {
      if (_scrollController.offset > 100) {
        setState(() {
          _buttonText = '';
          _btnSize = 90.0;
        });
      } else if (_scrollController.offset <= 100) {
        setState(() {
          _buttonText = defaultBtnText;
          _btnSize = 110.0;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //todo need to decompose
    return Stack(
      children: [
        ListView.builder(
          controller: _scrollController,
          itemCount: ads.length,
          itemBuilder: (context, index) {
            return ads[index];
          },
        ),
        Positioned(
          bottom: 30.0,
          right: 20.0,
          child: GestureDetector(
              onTap: () {
                print("filters pressed");
              },
              child: Material(
                elevation: 4.0,
                borderRadius: BorderRadius.circular(25.0),
                child: AnimatedContainer(
                  width: _btnSize,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  duration: Duration(milliseconds: 400),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.filter_list, color: Colors.white,),
                        SizedBox(width: 5.0),
                        Text(
                          _buttonText,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
          ),
        )
      ],
    );
  }

}