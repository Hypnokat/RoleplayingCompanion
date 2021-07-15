import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roleplaying Companion'),
        centerTitle: true,
        backgroundColor: Colors.purple[400],
      ),
      body:Center(child: Text('Home Page')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple[400],
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('Initiative Tracker'),
              onTap: () {
                //update state of app
                //Close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InitiativeTracker())
                );
              },
            ),
          ],
        ),
      ),

    );
  }
}

class InitiativeTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Initiative Tracker'),
      ),
      body: Center(

      )
    );
  }
}
