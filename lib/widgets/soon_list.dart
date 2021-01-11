import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_zone/models/soon.dart';
import 'package:movie_zone/models/today.dart';
import 'package:provider/provider.dart';

class SoonList extends StatefulWidget {
  @override
  _SoonListState createState() => _SoonListState();
}

class _SoonListState extends State<SoonList> {
  @override
  Widget build(BuildContext context) {

    final soon = Provider.of<List<Soon>>(context) ?? [];

    return ListView.builder(
        itemCount: soon.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                image: DecorationImage(
                    image: NetworkImage(soon[index].cover),
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
                      Color.fromRGBO(0, 0, 0, 0.7),
                      Color.fromRGBO(0, 0, 0, 0.7),
                    ]
                ),
              ),
              child: Center(
                child: Text(
                  'COMING SOON',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.5
                  ),
                ),
              ),
            ),
          );
        });
  }
}
