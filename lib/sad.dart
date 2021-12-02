import 'package:flutter/material.dart';
import './home.dart';
import 'package:cached_network_image/cached_network_image.dart';
// Import the firebase_core and cloud_firestore plugin
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Sad extends StatefulWidget {
  const Sad({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => new _SadState();
}

class _SadState extends State<Sad> {
  final Stream<QuerySnapshot> _sleeplessStream =
      FirebaseFirestore.instance.collection('sad').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[200],
        appBar: AppBar(
            title: Text('Blogs For You'),
            backgroundColor: Colors.pink[900],
            automaticallyImplyLeading: false),
        body: Container(
            child: StreamBuilder<QuerySnapshot>(
          stream: _sleeplessStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text('Loading...');
            }
            final data = snapshot.requireData;
            return ListView.builder(
                itemCount: data.size,
                itemBuilder: (context, index) {
                  // return Text('${data.docs[index]['title']}');
                  return Container(
                    margin: EdgeInsets.only(bottom: 16),
                    height: 150,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 500.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 2.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "${data.docs[index]['image_url']}"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(16),
                                child: Text(
                                  '${data.docs[index]['title']}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      backgroundColor: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              //creating a external url link
                              InkWell(
                                onTap: () {
                                  launch(
                                      '${data.docs[index]['url']}'); //launch the url
                                },
                                child: Text(
                                  '${data.docs[index]['url']}',
                                  style: TextStyle(
                                      backgroundColor: Colors.white,
                                      color: Colors.pink[900],
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                });
          },
        )));
  }
}
