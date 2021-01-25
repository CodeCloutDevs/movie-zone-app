import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_zone/models/soon.dart';
import 'package:movie_zone/models/today.dart';

class DatabaseService {
  final CollectionReference todayCollection = FirebaseFirestore.instance.collection('today');
  final CollectionReference soonCollection = FirebaseFirestore.instance.collection('soon');

  List<Today> _todaySnapshot (QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Today(
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
  Stream<List<Today>> get today {
    return todayCollection.snapshots().map(_todaySnapshot);
  }

  List<Soon> _soonSnapshot (QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Soon(
        id: doc.id,
          cover: doc.data()['cover'] ?? '',
          trailer: doc.data()['trailer'] ?? ''
        );
    }).toList();
  }

  Stream<List<Soon>> get soons {
    return soonCollection.snapshots().map(_soonSnapshot);
  }
}