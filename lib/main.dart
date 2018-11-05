import 'package:flutter/material.dart';
import 'SecondScreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'puppy.addiction'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var heroTagList = [
    "paw1",
    "paw2",
    "paw3",
    "paw4",
    "paw5",
    "paw6",
    "paw7",
    "paw8",
    "paw9"
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.5,
        leading: Icon(Icons.arrow_back, size: 30.0, color: Colors.black),
        title: new Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Icon(
            Icons.more_vert,
            size: 30.0,
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
            child: Row(children: <Widget>[
              Icon(Icons.account_circle, color: Colors.black12, size: 120.0),
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 0.0, left: 15.0, right: 10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "516",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "509k",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "53",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "posts",
                          ),
                          Text("followers"),
                          Text("following"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 0.5,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Follow",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "puppy and dog world",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child:
                      Text("\u{1F436} Bringing the best puppies of instagram"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text("\u{1F50A} Turn On Post Notifications"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    "\u{1F48C} for advertisement",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text("Get free dog Christmas outfits now...\u{1F447}"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    "www.ilpolso.store/collections/dog-outfits/product...",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
              left: 10.0,
              right: 10.0,
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 0.5, color: Colors.grey),
                bottom: BorderSide(width: 0.5, color: Colors.grey),
                right: BorderSide.none,
                left: BorderSide.none,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.grid_on, size: 30.0, color: Colors.grey),
                Icon(Icons.calendar_view_day, size: 30.0, color: Colors.grey),
                Icon(Icons.person_add, size: 30.0, color: Colors.grey),
              ],
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.all(0.0),
            shrinkWrap: true,
            itemBuilder: (context, position) {
              return Hero(
                tag: heroTagList[position],
                child: InkWell(
                    child: Card(
                        color: Colors.redAccent,
                        child: Center(
                          child: Icon(Icons.pets, color: Colors.white),
                        )),
                    onLongPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SecondScreen(heroTagList[position])),
                      );
                    }),
              );
            },
            itemCount: 9,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.5,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.5, color: Colors.black54),
              bottom: BorderSide.none,
              right: BorderSide.none,
              left: BorderSide.none,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 12.0, bottom: 12.0, left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.home,
                  size: 30.0,
                ),
                Icon(
                  Icons.search,
                  size: 30.0,
                ),
                Icon(
                  Icons.add_box,
                  size: 30.0,
                ),
                Icon(
                  Icons.favorite_border,
                  size: 30.0,
                ),
                Icon(
                  Icons.person,
                  size: 30.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
