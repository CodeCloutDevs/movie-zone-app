import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_zone/models/soon_model.dart';
import 'package:movie_zone/models/today_model.dart';

class DatabaseService {
  final CollectionReference todayCollection = FirebaseFirestore.instance.collection('today');
  final CollectionReference soonCollection = FirebaseFirestore.instance.collection('soon');

  List<TodayModel> _todaySnapshot (QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return TodayModel(
          doc.id,
          doc.data()['title'],
          doc.data()['category'],
          doc.data()['cover'],
          doc.data()['date'],
          doc.data()['limits'],
          doc.data()['starring_one'],
          doc.data()['starring_two'],
          doc.data()['starring_three'],
          doc.data()['timeslots'],
          doc.data()['trailer'],
          doc.data()['storyline']
      );
    }).toList();
  }

  //Get today stream
  Stream<List<TodayModel>> get today {
    return todayCollection.snapshots().map(_todaySnapshot);
  }

  List<SoonModel> _soonSnapshot (QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return SoonModel(
        id: doc.id,
          cover: doc.data()['cover'] ?? '',
          trailer: doc.data()['trailer'] ?? ''
        );
    }).toList();
  }

  Stream<List<SoonModel>> get soons {
    return soonCollection.snapshots().map(_soonSnapshot);
  }
}