import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:movie_zone/services/database.dart';
import 'package:movie_zone/widgets/today_list.dart';
import 'package:provider/provider.dart';
import 'package:movie_zone/models/today_model.dart';

class TodayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<TodayModel>>.value(
      value: DatabaseService().today,
      child: Container(
        child: TodayList()
      ),
    );
  }
}
