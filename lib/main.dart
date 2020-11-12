import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // https://api.flutter.dev/flutter/material/MaterialApp-class.html
      title: "Les Widgets basiques",
      theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // https://api.flutter.dev/flutter/material/Scaffold-class.html
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.account_circle),
        actions: <Widget>[
          Icon(Icons.access_alarm),
          Icon(Icons.golf_course),
          Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
        centerTitle: true,
      ),
      //backgroundColor: Colors.teal,
      body: Container(
          color: Colors.blue,
          //height: MediaQuery.of(context).size.height / 2,
          //width: MediaQuery.of(context).size.width / 3,
          //margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
          child: Center(
            // Image
            //   // child: Container(
            //   //   width: 50.0,
            //   //   height: 125.0,
            //   //   color: Colors.white,
            //   // ),
            //   child: Card(
            //     elevation: 10.0,
            //     color: Colors.black,
            //     child: Container(
            //       width: MediaQuery.of(context).size.width / 1.5,
            //       height: 250.0,
            //       // child: Image.network( // https://pixabay.com/fr/
            //       //   "https://www.roddata.net/largetile.png",
            //       //   fit: BoxFit.cover,
            //       // ),
            //       child: Image.asset( // voir fichier pubspec.yaml dans assets
            //         'images/catassis.jpg',
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //   ),
            // ),

            // Text
            // child: Text(
            //   "J'apprends les Widgets de Flutter",
            //   textAlign: TextAlign.center,
            //   textScaleFactor: 2.0, // Agrandi de 2 fois
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 20.0,
            //       fontStyle: FontStyle.italic),
            //   maxLines: 2, // Lignes max affichées
            // ),

            // Column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //center,
              children: [
                Text(
                  "Salut tout le monde",
                  style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic),
                ),
                Card(
                  elevation: 10.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 200.0,
                    child: Image.asset(
                      "images/catassis.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 75.0,
                  color: Colors.red,
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Container(
                      //   height: MediaQuery.of(context).size.width / 8, //65.0,
                      //   width: MediaQuery.of(context).size.width / 8, //65.0,
                      //   color: Colors.yellow,
                      // ),
                      // Container(
                      //   height: MediaQuery.of(context).size.width / 8, //65.0,
                      //   width: MediaQuery.of(context).size.width / 8, //65.0,
                      //   color: Colors.blue,
                      // ),
                      // Container(
                      //   height: MediaQuery.of(context).size.width / 8, //65.0,,
                      //   width: MediaQuery.of(context).size.width / 8, //65.0,
                      //   color: Colors.indigo,
                      // ),
                      // Container(
                      //   height: MediaQuery.of(context).size.width / 8, //65.0,
                      //   width: MediaQuery.of(context).size.width / 8, //65.0,
                      //   color: Colors.teal,
                      // ),
                      Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width / 10,
                      ),
                      Icon(
                        Icons.thumb_down,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width / 10,
                      ),
                      Icon(
                        Icons.palette,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width / 10,
                      ),
                      Icon(
                        Icons.directions_bike,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width / 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
