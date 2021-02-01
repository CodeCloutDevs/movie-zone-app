import 'package:flutter/material.dart';
import 'package:movie_zone/screens/cinema.dart';
import 'package:movie_zone/screens/news.dart';
import 'package:movie_zone/screens/soon.dart';
import 'package:movie_zone/screens/today.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _showMoreOptions () {
    showModalBottomSheet
      (context: context,
        builder: (context) {
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  color: Colors.purple,
                  textColor: Colors.white,
                  child: Text('Prices'),
                  onPressed: () {
                    Navigator.pop(context, true);
                    Navigator.pushNamed(context, '/prices');
                  },
                ),
                RaisedButton(
                  color: Colors.purple,
                  textColor: Colors.white,
                  child: Text('Contact Us'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                ),
                RaisedButton(
                  color: Colors.purple,
                  textColor: Colors.white,
                  child: Text('About Us'),
                  onPressed: () {
                    showAboutDialog(
                        context: context,
                        applicationName: 'Movie Zone',
                        applicationVersion: '1.0.0',
                        applicationLegalese: 'Clout Developers',
                        children: <Widget>[
                          Text(
                            'The Gables Shopping Centre',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Old Mbabane Rd',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Ezulwini Valley',
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Eswatini',
                            textAlign: TextAlign.center,
                          ),
                        ]
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Movie Zone'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                    Icons.text_snippet_outlined,
                    color: Colors.white,
                ),
                onPressed: () {
                  _showMoreOptions();
                }
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Today',),
              Tab(text: 'Soon',),
              Tab(text: 'Cinema',),
              Tab(text: 'Newsletter',)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TodayScreen(),
            SoonScreen(),
            InCinema(),
            News()
          ],
        ),
      ),
    );
  }
}
