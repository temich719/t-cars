import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/features/advertisement/widgets/favorite_icon.dart';
import 'package:t_cars/features/car_single/widgets/car_images.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

class AdvertisementWidget extends StatefulWidget {
  const AdvertisementWidget({
    required this.name,
    required this.price,
    required this.description,
    this.carsImages = const [],
    super.key,
  });

  final String name;
  final int price;
  final String description;
  final List<Image> carsImages;

  @override
  State<AdvertisementWidget> createState() => _AdvertisementWidgetState();
}

class _AdvertisementWidgetState extends State<AdvertisementWidget> {
  late String _name;
  late int _price;
  late String _description;
  late List<Image> _carsImages;

  @override
  void initState() {
    super.initState();
    _name = widget.name;
    _price = widget.price;
    _description = widget.description;
    _carsImages = List.from(widget.carsImages);
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Card(
      color: theme?.cardColor,
      elevation: 4.0,
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_carsImages.isNotEmpty)
            CarImagesWidget(
              carImages: _carsImages,
              imageContainerHeight: 210.0,
            ),
          FavoriteIcon(name: _name),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              '\$$_price',
              style: TextStyle(
                fontSize: theme?.textSize,
                color: theme?.carPrice,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 8.0, 0.0, 8.0),
            child: Text(
              _description,
              style: TextStyle(color: theme?.changeableTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
