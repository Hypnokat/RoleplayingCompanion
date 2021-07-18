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
              leading: Icon(Icons.book),
              title: const Text('Initiative Tracker'),
              onTap: () {
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
        // leading: Icon(Icons.hourglass_bottom),
        title: Text('Initiative Tracker'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(children: <Widget>[
            Row(
              children: const <Widget>[
                 Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Name of Player/Creature'
                        ),
                      ),
                  ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Initiative'
                    ),
                  ),
                ),
                Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                          hintText: 'HP'
                      ),
                    ),
                  ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'AC'
                    ),
                  ),
                ),
              ],
          ),
        ],
      ),
    );
  }
}
