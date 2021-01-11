import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_zone/models/today.dart';
import 'package:provider/provider.dart';

class TodayList extends StatefulWidget {
  @override
  _TodayListState createState() => _TodayListState();
}

class _TodayListState extends State<TodayList> {
  @override
  Widget build(BuildContext context) {

    final today = Provider.of<List<Today>>(context) ?? [];

    return ListView.builder(
        itemCount: today.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                image: DecorationImage(
                    image: NetworkImage(today[index].cover),
                    fit: BoxFit.cover
                )
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0.1),
                      Color.fromRGBO(0, 0, 0, 0.9),
                    ]
                ),
              ),
            ),
          );
        });
  }
}
