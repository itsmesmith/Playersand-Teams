import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Futsals extends StatefulWidget {
  const Futsals({Key? key}) : super(key: key);

  @override
  _FutsalsState createState() => _FutsalsState();
}

class _FutsalsState extends State<Futsals> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Featured locally hosted matches',
              style: TextStyle(fontSize: 16, fontFamily: 'Airbnb Cereal Bold'),
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Enter match near you. Everyone plays, everyone plays.',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'Airbnb Cereal book',
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          //width: 200,
          height: 237,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(2, (index) {
                return Container(
                  width: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xFFF8F8F8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/lalitpur 7A side.JPG'),
                                height: 125,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  'Sirish Malla',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'Airbnb Cereal book',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hardik Futsal',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Airbnb Cereal Bold',
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '5:00 AM - 6:00 AM',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Airbnb Cereal book',
                            ),
                          ),
                          Text(
                            'June 6',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Airbnb Cereal book',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/images/user.svg',
                            height: 18,
                            width: 18,
                            color: Colors.teal,
                          ),
                          Text(
                            '3/10',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Airbnb Cereal book',
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                value: 0.3,
                                valueColor: AlwaysStoppedAnimation(Colors.teal),
                                minHeight: 10,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Teams looking for casual matches',
              style: TextStyle(fontSize: 16, fontFamily: 'Airbnb Cereal Bold'),
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Looking for fun games with other teams? Explore teams that are looking for casual, friendly and fun matches.',
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'Airbnb Cereal book',
          ),
        ),
        Container(
          //width: 200,
          height: 237,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(2, (index) {
                return Container(
                  width: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xFFF8F8F8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image(
                            image: AssetImage(
                                'assets/images/lalitpur 7A side.JPG'),
                            height: 125,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'MUSCN Devils',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Airbnb Cereal Bold',
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Balkot, Bhaktapur',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Airbnb Cereal book',
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(8),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Text(
                      'Play with National Team',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Airbnb Cereal Bold'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Text(
                      'Create your team today and get a chance to play a friendly match with players '
                      'from the National team.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Airbnb Cereal book'),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    child: Image.asset(
                      'assets/images/lalitpur 7A side.JPG',
                      height: 220.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 125,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: BorderSide(
                      color: Color(0xff42B19B),
                      width: 1.1,
                    ),
                  ),
                ),
                child: Text(
                  'Explore More',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Airbnb Cereal Bold'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.yellow.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.info_outline,size: 30,),
                  Text(
                    'Explore More',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Airbnb Cereal book'),
                  ),

                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Access Help',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Airbnb Cereal Bold'),
              ),
              Text(
                'Tutorial videos that help you maneuver around the app and our features.',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Airbnb Cereal book'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    child: Image(
                      image: AssetImage(
                        'assets/images/youtube.jpeg'

                      ),
                      height: 30,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'View all Tutorials',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            decoration: TextDecoration.underline,
                            fontFamily: 'Airbnb Cereal book'),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp,size: 10,)
                    ],
                  )
                ],
              )
            ],
          ),
        ),

      ],
    );
  }
}
