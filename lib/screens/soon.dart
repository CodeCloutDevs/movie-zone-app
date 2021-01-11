import 'package:flutter/material.dart';
import 'package:movie_zone/models/soon.dart';
import 'package:movie_zone/services/database.dart';
import 'package:movie_zone/widgets/soon_list.dart';
import 'package:provider/provider.dart';

class SoonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Soon>>.value(
      value: DatabaseService().soons,
      child: Container(
        child: SoonList(),
      ),
    );
  }
}
