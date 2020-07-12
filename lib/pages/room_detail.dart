import 'package:flutter/material.dart';

class RoomDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Hey guys！It is the main page and the detail page about my apartment app.Hope you like it and have a nice day！Looking for UI design",
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            maxLines: 3,
          ),
        ),
        ListTile(
          title: Text("Telephone"),
          subtitle: Text("0674588455,  0674588455"),
          leading: IconButton(icon: Icon(Icons.edit, color: Theme.of(context).accentColor,), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text("City"),
          subtitle: Text("Dar es Salaam"),
          leading: IconButton(icon: Icon(Icons.edit, color: Theme.of(context).accentColor,), onPressed: () {}),
          onTap: () {},
        ),
        ListTile(
          title: Text("Physical Address"),
          subtitle: Text("Buza"),
          leading: IconButton(icon: Icon(Icons.edit, color: Theme.of(context).accentColor,), onPressed: () {}),
          trailing: IconButton(icon: Icon(Icons.location_on), onPressed: () {}),
        )
      ],
    );
  }
}
