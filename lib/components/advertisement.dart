import 'package:flutter/material.dart';

class AdvertisementWidget extends StatefulWidget {
  final String name;
  final int price;
  final String description;
  final List<Image> carsImages;

  const AdvertisementWidget({
    required this.name,
    required this.price,
    required this.description,
    this.carsImages = const [],
    super.key,
  });

  @override
  State<AdvertisementWidget> createState() => _AdvertisementWidgetState();
}

class _AdvertisementWidgetState extends State<AdvertisementWidget> {
  late String _name;
  late int _price;
  late String _description;
  late List<Image> _carsImages;
  Color _favoriteColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    _name = widget.name;
    _price = widget.price;
    _description = widget.description;
    _carsImages = List.from(widget.carsImages);
  }

  void _onFavoriteTapped(BuildContext context) {
    setState(() {
      _favoriteColor == Colors.grey
          ? _favoriteColor = Colors.redAccent
          : _favoriteColor = Colors.grey;
    });
    if (_favoriteColor == Colors.redAccent) {
      final SnackBar snackBar = SnackBar(
        content: Text(
          'Added to favorites',
          style: TextStyle(color: Colors.white),
        ),
        action: SnackBarAction(
          label: 'Undo',
          textColor: Colors.white,
          onPressed: () {
            setState(() {
              _favoriteColor = Colors.grey;
            });
          },
        ),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 28.0),
        duration: Duration(seconds: 3),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void addImage(Image image) {
    setState(() {
      _carsImages.add(image);
    });
  }

  void setName(String name) {
    setState(() {
      _name = name;
    });
  }

  void setPrice(int price) {
    setState(() {
      _price = price;
    });
  }

  void setDescription(String description) {
    setState(() {
      _description = description;
    });
  }

  //todo favorites
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      color: Colors.white70,
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_carsImages.isNotEmpty)
            SizedBox(
              height: 200,
              child: PageView(
                children:
                    _carsImages.map((image) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(
                          10.0,
                          10.0,
                          10.0,
                          0.0,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: image,
                        ),
                      );
                    }).toList(),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    size: 25.0,
                    fill: 0.5,
                    color: _favoriteColor,
                  ),
                  onPressed: () => _onFavoriteTapped(context),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '\$$_price',
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_description),
          ),
        ],
      ),
    );
  }
}
