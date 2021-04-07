import 'package:flutter/material.dart';
import "list.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant List',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'restaurant list '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // get index => ListView ;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffca503),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Restaurant List', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black26),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                  itemCount: List1.stringList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: InkWell(
                          splashColor: Colors.orange,
                          onTap: () {
                            print('Card tapped.');
                          },
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(List1.stringList[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(List1.Addresslist[index],
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(List1.numberlist[index]),
                                        Row(
                                          children: [
                                            Icon(Icons.star,
                                                size: 20,
                                                color: Colors.lightGreenAccent),
                                            Text(List1.ratinglist[index]),
                                          ],
                                        ),
                                        Text(List1.kitnidurhai[index],
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 12)),
                                      ],
                                    )),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 90,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(
                                          fit: BoxFit.cover,
                                          alignment: Alignment.topRight,
                                          image: AssetImage(
                                              List1.imagelist[index]),
                                        ),
                                      ),
                                    ),
                                    Text(List1.minorder[index],
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 12)),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    );
                  }),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
