import 'package:flutter/material.dart';
import 'package:movie_zone/screens/cinema.dart';
import 'package:movie_zone/screens/news.dart';
import 'package:movie_zone/screens/soon.dart';
import 'package:movie_zone/screens/today.dart';
import 'package:movie_zone/widgets/drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: drawer(context),
        appBar: AppBar(
          title: Text('Movie Zone'),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                    Icons.text_snippet_outlined,
                    color: Colors.white,
                ),
                onPressed: null
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
