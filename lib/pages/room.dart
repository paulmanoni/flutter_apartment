import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'room_detail.dart';
import 'room_images.dart';

class RoomScreen extends StatefulWidget {
  @override
  _RoomScreenState createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool roomFavorite = false;
  bool firstActive = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/room.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Material(
                              borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              ),
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 12,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              elevation: 2,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Material(
                            elevation: 2,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              child: Container(
                                height: 40,
                                width: 40,
                                child: Icon(
                                  roomFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  if (roomFavorite) {
                                    roomFavorite = false;
                                  } else {
                                    roomFavorite = true;
                                  }
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: ListTile(
                  title: Text(
                    "Aromatic Hotel",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Small family house",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                    child: Column(
                      children: [
                        Text(
                          r"$1000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text("Per month")
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    SizedBox(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            firstActive = true;
                          });
                        },
                        child: Text(
                          "Details".toUpperCase(),
                          style: TextStyle(
                              color: firstActive ? Colors.white : null),
                        ),
                        color:
                            firstActive ? Theme.of(context).accentColor : null,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width / 2 - 5,
                    ),
                    SizedBox(
                      child: FlatButton(
                        color:
                            firstActive ? null : Theme.of(context).accentColor,
                        onPressed: () {
                          setState(() {
                            firstActive = false;
                          });
                        },
                        child: Text(
                          "Images".toUpperCase(),
                          style: TextStyle(
                              color: firstActive ? null : Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width / 2 - 5,
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: firstActive ? RoomDetail() : RoomImages(),
            )
          ],
        ),
      ),
    );
  }
}
