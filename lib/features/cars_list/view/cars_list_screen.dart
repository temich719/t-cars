import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/features/advertisement/view/advertisement.dart';
import 'package:t_cars/features/cars_list/widgets/widgets.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

const String carMockUrl = 'lib/img/testImg.jpg';

class CarsListScreen extends StatefulWidget {
  const CarsListScreen({super.key});

  @override
  State<CarsListScreen> createState() => _CarsListScreenState();
}

class _CarsListScreenState extends State<CarsListScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = true;
  List<AdvertisementWidget> _ads = [];

  Future<List<AdvertisementWidget>> getRequestToMockApi() {
    return Future.delayed(
      Duration(seconds: 3),
      () => List.generate(10, (i) {
        return AdvertisementWidget(
          name: 'Lamborghini Urus 2020',
          price: 250000,
          description: 'A well-maintained car with low mileage.',
          carsImages: [
            Image.asset(carMockUrl, fit: BoxFit.cover),
            Image.asset(carMockUrl, fit: BoxFit.cover),
          ],
        );
      }),
    );
  }

  void _loadAds() async {
    List<AdvertisementWidget> ads = await getRequestToMockApi();
    setState(() {
      _ads = ads;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadAds();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Stack(
      children: [
        CarsListWidget(ads: _ads, scrollController: _scrollController),
        if (_isLoading)
          Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: theme?.circleIndicatorColor,
                strokeWidth: 3.0,
              ),
            ),
          ),
        FilterButton(scrollController: _scrollController),
      ],
    );
  }
}
