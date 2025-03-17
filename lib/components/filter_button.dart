import 'package:flutter/material.dart';

const String defaultBtnText = 'Filters';

class FilterButton extends StatefulWidget {
  final ScrollController scrollController;

  const FilterButton({required this.scrollController, super.key});

  @override
  State<FilterButton> createState() => _FilterButtonState();
}

class _FilterButtonState extends State<FilterButton> {
  String _buttonText = defaultBtnText;
  double _btnSize = 110.0;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      if (widget.scrollController.offset > 200) {
        setState(() {
          _buttonText = '';
          _btnSize = 90.0;
        });
      } else if (widget.scrollController.offset <= 200) {
        setState(() {
          _buttonText = defaultBtnText;
          _btnSize = 110.0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                  Icon(Icons.filter_list, color: Colors.white),
                  SizedBox(width: 5.0),
                  Text(_buttonText, style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
