import 'package:flutter/material.dart';
import 'homepage.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[600],
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 280.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                'NAME',
                style: TextStyle(
                  fontSize: 48.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                'motto here',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StartingScreen()
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal[900],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Text(
                      'Go To Finance Manager',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

