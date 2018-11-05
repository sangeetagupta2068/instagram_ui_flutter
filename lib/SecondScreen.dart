import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
   SecondScreen(this.heroTag);
   String heroTag;

  Widget _enlargeCard(String heroTag, BuildContext context){
    return Hero(
      tag: heroTag,
      child: GestureDetector(
        onTapUp:(TapUpDetails details){
          Navigator.pop(context);
          },
        child: Card(
            child: Container(
              width: 300.0,
              height: 400.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, top:10.0, bottom: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.account_circle,color: Colors.black12, size: 23.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 7.0),
                          child: Text("puppy.addiction", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.redAccent,
                      child: Center(
                        child: Icon(Icons.pets,size: 50.0, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.favorite_border,size: 27.0),
                        Icon(Icons.chat_bubble_outline,size: 27.0),
                        Icon(Icons.send,size: 27.0),
                      ],
                    ),
                  )
                ],
              )
            )
        ),
      ),
    );}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        elevation: 0.5,
        leading: Icon(Icons.arrow_back, size: 30.0, color: Colors.black),
    title: new Text(
    "Second Screen",
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
      body: Center(
        child:_enlargeCard(heroTag,context),
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