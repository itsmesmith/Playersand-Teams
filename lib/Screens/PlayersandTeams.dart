import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plyesandteams/utils/Txtbtn.dart';
import 'package:plyesandteams/widgets/PlayersandTeams/Futsals.dart';
import 'package:plyesandteams/widgets/PlayersandTeams/PlayPals.dart';

class PlayersandTeams extends StatefulWidget {
  const PlayersandTeams({Key? key}) : super(key: key);

  @override
  _PlayersandTeamsState createState() => _PlayersandTeamsState();
}

class _PlayersandTeamsState extends State<PlayersandTeams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(color: Colors.teal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Players & Teams',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Airbnb Cereal Bold'),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //_buildToggleContainer('Combined', '', 'Join Matches Near You','100 matches ongoing', ''),
                    Container(
                      //width: 200,
                      height: 300,
                      child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                                width: 20,
                              ),
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return _buildToggleContainer(
                                'Combined',
                                '',
                                'Join Matches Near You',
                                '100 matches ongoing',
                                '');
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      PlayPals(), SizedBox(
                        height: 30,
                      ), Futsals()],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  _buildToggleContainer(String title, String svgimage, String subtitle1,
      String subtitle2, String stacks) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 300,
      width: 200,
      decoration: BoxDecoration(
          color: Color(0xFF5EB1A1), borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 10,
                fontFamily: 'Airbnb Cereal Bold',
                color: Colors.white),
          ),
          Text(
            subtitle1,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Airbnb Cereal Bold',
                color: Colors.white),
          ),
          Text(
            subtitle2,
            style: TextStyle(
                fontSize: 10,
                fontFamily: 'Airbnb Cereal Bold',
                color: Colors.white),
          ),
          SizedBox(
            height: 25,
          ),
          TxtBtn(
            txt: 'Explore More',
            txtcolour: Colors.teal,
            Colour: Colors.white,
            borderwidth: 0,
          ),
        ],
      ),
    );
  }
}
