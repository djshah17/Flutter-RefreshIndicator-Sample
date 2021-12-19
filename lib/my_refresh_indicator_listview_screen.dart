import 'package:flutter/material.dart';

class MyRefreshIndicatorListViewScreen extends StatefulWidget {
  @override
  _MyRefreshIndicatorListViewScreenState createState() => _MyRefreshIndicatorListViewScreenState();
}

class _MyRefreshIndicatorListViewScreenState extends State<MyRefreshIndicatorListViewScreen> {

  var sectionsCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Refresh Indicator Sample')),
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.orangeAccent,
        displacement: 200,
        strokeWidth: 4,
        triggerMode: RefreshIndicatorTriggerMode.onEdge,
        onRefresh: () async {
          await Future.delayed(Duration(milliseconds: 2000));
          setState(() {
            sectionsCount = sectionsCount + 1;
          });
        },
        child: Container(
          child: ListView.builder(
              itemCount: sectionsCount,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, position) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage("https://resources.premierleague.com/premierleague/photos/players/40x40/p14937.png"),
                      ),
                      title: Text("Cristiano Ronaldo",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        "Forward" +
                            " | " +
                            "Manchester United" +
                            " | " +
                            "Portugal",
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage("https://resources.premierleague.com/premierleague/photos/players/40x40/p61366.png"),
                      ),
                      title: Text("Kevin De Bruyne",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        "Midfielder" +
                            " | " +
                            "Manchester City" +
                            " | " +
                            "Belgium",
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage("https://resources.premierleague.com/premierleague/photos/players/40x40/p97032.png"),
                      ),
                      title: Text("Virgil van Dijk",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        "Defender" +
                            " | " +
                            "Liverpool" +
                            " | " +
                            "Netherlands",
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage("https://resources.premierleague.com/premierleague/photos/players/40x40/p109745.png"),
                      ),
                      title: Text("Kepa Arrizabalaga",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        "Goalkeeper" +
                            " | " +
                            "Chelsea" +
                            " | " +
                            "Spain",
                        style: TextStyle(fontSize: 16),
                        maxLines: 1,
                      ),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
