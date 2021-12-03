import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:favorite_button/favorite_button.dart';
import './home.dart';

class Exercise extends StatefulWidget {
  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  List? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('Podcasts We Recommend'),
          backgroundColor: Colors.pink[900],
        ),
        body: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/loadjson/podcast.json'),
            builder: (context, snapshot) {
              // Decode the JSON
              var newData = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 32, bottom: 32, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  launch(newData[index]['url']);
                                },
                                child: Text(
                                  newData[index]['title'],
                                  //'Note Title',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ),
                              Text(
                                "Artist: ${newData[index]['content']}",
                                //'Note Text',
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          FavoriteButton(
                            isFavorite: false,
                            valueChanged: (_isFavorite) {
                              print('Is Favorite : $_isFavorite');
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: newData == null ? 0 : newData.length,
              );
            },
          ),
        ));
  }
}
