import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_zone/models/today_model.dart';
import 'package:provider/provider.dart';

class TodayList extends StatefulWidget {
  @override
  _TodayListState createState() => _TodayListState();
}

class _TodayListState extends State<TodayList> {
  @override
  Widget build(BuildContext context) {

    final today = Provider.of<List<TodayModel>>(context) ?? [];

    return ListView.builder(
        itemCount: today.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/movie_details');
            },
            child: Container(
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
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        today[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        today[index].category,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Next Session',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            today[index].timeSlots[0]  == null ? '' : today[index].timeSlots[0],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            today[index].timeSlots[1]  == null ? '' : today[index].timeSlots[1],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            today[index].timeSlots[2]  == null ? '' : today[index].timeSlots[2],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
