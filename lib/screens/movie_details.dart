import 'package:flutter/material.dart';

class MovieDetails extends StatefulWidget {
  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(

              ),
              child: Container(
                color: Color.fromRGBO(0, 0, 0, .4),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      color: Color.fromRGBO(222, 13, 23, .4),
                        padding: EdgeInsets.all(5.0),
                        icon: Icon(
                            Icons.arrow_right,
                            color: Colors.red,
                        ), 
                        onPressed: () {
                          
                        },
                    ),
                    Text(
                      'Watch Trailer',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
