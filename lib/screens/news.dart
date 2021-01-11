import 'package:flutter/material.dart';
import 'package:movie_zone/widgets/input_decoration.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.purple[50],
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                fit: BoxFit.cover,
                  image: NetworkImage('http://www.moviezone.co.sz/wp-content/uploads/2020/09/1.jpg'),
                  )
                )
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'SUBSCRIBE TO OUR MAILING LIST',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: inputDecoration("Name"),
                      ),
                      SizedBox(height: 8.0,),
                      TextFormField(
                        decoration: inputDecoration("Surname"),
                      ),
                      SizedBox(height: 8.0,),
                      TextFormField(
                        decoration: inputDecoration("Email"),
                      )
                    ],
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                child: RaisedButton(
                  color: Colors.purple,
                  textColor: Colors.white,
                  onPressed: () {

                  },
                  child: Text('Subscribe'),
                ),
              ),
            ),
            SizedBox(height: 23.0,),
          ],
        ),
      ),
    );
  }
}
