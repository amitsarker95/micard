import 'package:flutter/material.dart';

void main() {
  runApp(const MiCard());
}

class MiCard extends StatefulWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  _MiCardState createState() => _MiCardState();
}

class _MiCardState extends State<MiCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[900],
        appBar: AppBar(
            backgroundColor: Colors.cyan[900],
            title: Center(
              child: Text(
                "About Myself",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 24.0,
                  letterSpacing: 2.0,
                  wordSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpg'),
                radius: 50.0,
              ),
              Text(
                "Amit Sarker",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                  fontFamily: "Pacifico",
                  color: Colors.white,
                  wordSpacing: 6.0,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 18.0,
                  color: Colors.teal[100],
                  letterSpacing: 3.0,
                  wordSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.brown,
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0,),
                child: Padding(
                  padding: EdgeInsets.all(20.0,),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+880 1718332515",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 3.0,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.brown,

                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25,),
                child: Padding(
                  padding: EdgeInsets.all(20.0,),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "amitsarker95@gmail.com",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Source Sans Pro",
                        letterSpacing: 0.0,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
