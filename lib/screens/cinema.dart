import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class InCinema extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SpinKitFadingCube(
            color: Colors.purple,
            size: 50.0,
          ),
          SizedBox(height: 23.0,),
          Text(
              'COMING SOON',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                letterSpacing: 2.3
              ),
          )
        ],
      ),
    );
  }
}
