import 'package:apartment/pages/room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Container(
          width: MediaQuery.of(context).size.width - 80,
          child: Material(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: ListView(
              children: [
                DrawerHeader(
                    child: Center(
                  child: Text("Hello"),
                )),
                ListTile(
                  trailing: Icon(
                    Icons.home,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 2,
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: CircleAvatar(
                        child: Icon(
                          Icons.menu,
                          color: Theme.of(context).accentColor,
                        ),
                        backgroundColor: Colors.white24,
                      ),
                      customBorder: CircleBorder(
                        side: BorderSide(color: Theme.of(context).accentColor),
                      ),
                      onTap: () {},
                    ),
                    Text(
                      "R O O M",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Material(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, int item) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/room.jpeg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "City Hotel Murila",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15.0, bottom: 8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Barcelona, Spain"),
                                          Text("/per night")
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 16,
                                          ),
                                          Text("2 km to city")
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Column(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20.0),
                                        child: Text(
                                          r"$432",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RoomScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
                childCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
