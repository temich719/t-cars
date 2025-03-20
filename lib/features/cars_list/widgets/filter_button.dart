import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

const String defaultBtnText = 'Filters';

class FilterButton extends StatefulWidget {
  final ScrollController scrollController;

  const FilterButton({required this.scrollController, super.key});

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  final double btnOffsetStartScale = 200.0;

  String _buttonText = defaultBtnText;
  double _btnSize = 110.0;

  void setBtnTextAndSize(final String text, double size) {
    setState(() {
      _buttonText = text;
      _btnSize = size;
    });
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      if (widget.scrollController.offset > btnOffsetStartScale) {
        setBtnTextAndSize('', 90.0);
      } else {
        setBtnTextAndSize(defaultBtnText, 110.0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Positioned(
      bottom: 30.0,
      right: 20.0,
      child: GestureDetector(
        onTap: () => {}, //todo
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(25.0),
          child: AnimatedContainer(
            width: _btnSize,
            height: 45.0,
            decoration: BoxDecoration(
              color: theme?.buttonBorderPurple,
              borderRadius: BorderRadius.circular(25.0),
            ),
            duration: Duration(milliseconds: 350),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.filter_list, color: theme?.defaultIconColor),
                  SizedBox(width: 5.0),
                  Text(_buttonText, style: TextStyle(color: theme?.whiteText)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
