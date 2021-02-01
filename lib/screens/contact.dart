import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image(
                width: 250,
                height: 250,
                image: AssetImage('assets/images/movie.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'If there is anything you would like to enquire, please feel free to contact us',
                  textAlign: TextAlign.center,
              ),
            ),
            RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Tel: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    TextSpan(
                        text: '(+268) 2416 3552',
                        style: TextStyle(
                          color: Colors.deepPurple,
                        )
                    ),
                  ]
                ),
            ),
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Email: ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        )
                    ),
                    TextSpan(
                        text: 'moviezone@swazi.net',
                        style: TextStyle(
                          color: Colors.deepPurple,
                        )
                    ),
                  ]
              ),
            ),
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Email: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    TextSpan(
                        text: 'johan@moviezonecine.co.za',
                        style: TextStyle(
                          color: Colors.deepPurple,
                        )
                    ),
                  ]
              ),
            ),
            RichText(
              text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'facebook: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    TextSpan(
                        text: 'Movie Zone Cinemas, The Gables',
                        style: TextStyle(
                          color: Colors.deepPurple,
                        )
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
