import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayPals extends StatefulWidget {
  const PlayPals({Key? key}) : super(key: key);

  @override
  _PlayPalsState createState() => _PlayPalsState();
}

class _PlayPalsState extends State<PlayPals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.teal.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('PlayPals',style: TextStyle(
                fontSize: 12,
                fontFamily: 'Airbnb Cereal book'
              ),),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text('Your PlayPals & Friends',style: TextStyle(
              fontSize: 15,
              fontFamily: 'Airbnb Cereal Bold'
          ),),
          SizedBox(
            height: 6,
          ),
          Text("Find your friends in WePlay or add people that you'd want to play with.",style: TextStyle(
              fontSize: 12,
              fontFamily: 'Airbnb Cereal book'
          ),),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

              ),
              Row(
                children: [
                  Text('View all PlayPals',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Airbnb Cereal book',
                    decoration: TextDecoration.underline
                  ),),
                  Icon(Icons.arrow_forward_ios_sharp,size: 15,)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
