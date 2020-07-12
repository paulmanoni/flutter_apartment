import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomImages extends StatefulWidget {
  @override
  _RoomImagesState createState() => _RoomImagesState();
}

class _RoomImagesState extends State<RoomImages> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/room.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle),
            ),
          ],
        ),
      ),
    );
  }
}
