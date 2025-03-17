import 'package:flutter/material.dart';
import 'package:t_cars/components/advertisement.dart';

class SingleCarRoute extends StatefulWidget {
  final AdvertisementWidget carWidget;

  const SingleCarRoute({super.key, required this.carWidget});

  @override
  State<SingleCarRoute> createState() => _SingleCarRouteState();
}

class _SingleCarRouteState extends State<SingleCarRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => {Navigator.pop(context)},
            ),
            Text(widget.carWidget.name, style: TextStyle(color: Colors.white)),
          ],
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 4.0,
      ),
      backgroundColor: Color(0xD1E5A0EF),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(bottom: 70.0),
              children: [
                SizedBox(
                  height: 330.0,
                  child: PageView(
                    children:
                    widget.carWidget.carsImages.map((image) {
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
                  ), //todo check if empty
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.carWidget.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        '\$${widget.carWidget.price}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
                  child: Divider(color: Colors.white70),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.share,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          onPressed: () => {}, //todo
                        ),
                        Text(
                          'Share',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.favorite,
                            size: 30.0,
                            color: Colors.white,
                          ),
                          onPressed: () => {}, //todo
                        ),
                        Text(
                          'To favorites',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Divider(color: Colors.white70),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description:',
                        style: TextStyle(color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          '${widget.carWidget
                              .description}____loremasssssssssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd____loremasssssssssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd____loremasssssssssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd____loremasssssssssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd____loremasssssssssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd____loremasssssssssddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 10.0,
              child: GestureDetector(
                onTap: () => {}, //todo
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0.0),
                    child: Container(
                        width: double.infinity,
                        //height: 40.0,
                        child: ElevatedButton(
                          onPressed: () => {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(
                                  color: Colors.deepPurple, width: 2.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Call...',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
