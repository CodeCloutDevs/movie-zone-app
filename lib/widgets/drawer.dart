import 'package:flutter/material.dart';

Drawer drawer (BuildContext context) {
  return Drawer(
    child: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage('https://media.publit.io/file/logo-xq.png'),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: FlatButton(
                color: Colors.white,
                textColor: Colors.purple,
                child: Text('Prices'),
                onPressed: () {

                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: FlatButton(
                color: Colors.white,
                textColor: Colors.purple,
                child: Text('Social Media'),
                onPressed: () {

                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: FlatButton(
                color: Colors.white,
                textColor: Colors.purple,
                child: Text('Contact Us'),
                onPressed: () {

                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: FlatButton(
                color: Colors.white,
                textColor: Colors.purple,
                child: Text('App Info'),
                onPressed: () {

                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: FlatButton(
                color: Colors.white,
                textColor: Colors.purple,
                child: Text('About Us'),
                onPressed: () {

                },
              ),
            )
          ],
        ),
      ),
    ),
  );
}