import 'package:flutter/material.dart';

class MessageStream extends StatefulWidget {
  @override
  _MessageStreamState createState() => _MessageStreamState();
}

class _MessageStreamState extends State<MessageStream> {
  DateTime now = DateTime.now().toLocal();
  Widget _buildInput() => Container(
        height: kToolbarHeight + MediaQuery.of(context).padding.bottom,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).appBarTheme.color,
            border: Border(top: BorderSide(color: Colors.grey[700]))),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "message #channel",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder:
                            UnderlineInputBorder(borderSide: BorderSide.none))),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.alternate_email),
                    onPressed: () {},
                  ),
                  IconButton(icon: Icon(Icons.text_format), onPressed: () {}),
                  Expanded(child: Container()),
                  IconButton(icon: Icon(Icons.description), onPressed: () {}),
                  IconButton(icon: Icon(Icons.perm_media), onPressed: () {}),
                  IconButton(icon: Icon(Icons.send), onPressed: () {}),
                ],
              ),
            )
          ],
        ),
      );

  Widget _buildMessage() => ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: (0)),
        leading: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "Brad Pitt",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("  1:21 PM", style: Theme.of(context).textTheme.caption,),
          ],
        ),
        subtitle: Text(
            "Restarted application in 3,253ms. Restarted application in 3,253ms.",
            style: TextStyle(color: Theme.of(context).textTheme.body1.color)),
        isThreeLine: true,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: Text("#channel"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
          bottom: PreferredSize(
            child: Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[700],
            ),
            preferredSize: Size.fromHeight(1),
          )),
      body: SafeArea(
        bottom: true,
        child: SafeArea(
          top: true,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    _buildMessage(),
                    _buildMessage(),
                    _buildMessage(),
                    _buildMessage(),
                    _buildMessage(),
                    _buildMessage(),
                  ],
                ),
              ),
              _buildInput(),
            ],
          ),
        ),
      ),
    drawer: Drawer(child: 
    Column(children: <Widget> [
      Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        height: kToolbarHeight,
        width: double.infinity,
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[700]))),
        child: Row(children: <Widget> [
          Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Expanded(child: TextField
        (decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "Jump to ....",
          filled: true,
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),))
        ],),
      ),
      Expanded(child: 
      ListView(children:
       <Widget> [
        InkWell(
          onTap: () {}, 
        child: Row(children: <Widget> [
          Container(width: 16, 
          child: Text("#"),), 
          Expanded(child: Text("channelTitle"),),
        ],),)
      ],))
    ],),),
    );
  }
}
