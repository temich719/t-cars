import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/features/advertisement/view/advertisement.dart';
import 'package:t_cars/features/car_single/widgets/widget.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

class CarSingle extends StatefulWidget {
  final AdvertisementWidget advCarWidget;

  const CarSingle({super.key, required this.advCarWidget});

  @override
  State<CarSingle> createState() => _CarSingleState();
}

class _CarSingleState extends State<CarSingle> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: theme?.defaultIconColor),
              onPressed: () => {Navigator.pop(context)},
            ),
            Text(
              widget.advCarWidget.name,
              style: TextStyle(color: theme?.whiteText),
            ),
          ],
        ),
        backgroundColor: theme?.buttonBorderPurple,
        elevation: 4.0,
        titleTextStyle: TextStyle(
          fontSize: theme?.titleTextSize,
          fontWeight: theme?.titleWeigh,
          color: theme?.whiteText,
        ),
      ),
      backgroundColor: theme?.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Stack(
          children: [
            CarSingleListView(carWidget: widget),
            CarSingleCallButton(),
          ],
        ),
      ),
    );
  }
}
