import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  // Gradiant color background
  getBackgroundContainer(int i) {
    if (i == 9) {
      // x/xs-9
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff8C2480),
              Color(0xffCE587D),
              Color(0xffFF9485),
              Color(0xffFF9D80),
              Color(0xffFFBD73),
              Color(0xffFFC96F),
            ])),
      );
    } else if (i == 12) {
      // x/xs-12
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff6E4AA8),
              Color(0xffBEA4D7),
              Color(0xffD5C9E3),
              Color(0xffE5E1EB),
              Color(0xffEBEBEF),
              Color(0xffFFFFFF),
            ])),
      );
    } else if (i == 15) {
      // x/xs-15
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff3A265E),
              Color(0xff6364BA),
            ])),
      );
    } else if (i == 18) {
      // x/xs-18
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff262F69),
              Color(0xff3B4791),
              Color(0xff829BBF),
              Color(0xffFFB98D),
            ])),
      );
    } else if (i == 21) {
      // x/xs-21
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xffA6D3ED),
              Color(0xffF9C1C6),
              Color(0xffFFFFBC),
            ])),
      );
    } else {
      // x/xs-1
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff069BE0),
              Color(0xff12A0E1),
              Color(0xff57C1EB),
              Color(0xff8EDBF3),
              Color(0xffB6EEF9),
              Color(0xffCFF9FC),
              Color(0xffD8FEFE),
              Color(0xffFFFFFF),
              Color(0xffFFFFFF),
            ])),
      );
    }
  }

  getLandscapeImage(int i) {
    if (i == 9) {
      // x/xs-9
      return Image.asset(
        ('images/landscape_9.png'),
        fit: BoxFit.fitWidth,
      );
    } else if (i == 12) {
      // x/xs-12
      return Image.asset(
        ('images/landscape_12.png'),
        fit: BoxFit.fitWidth,
      );
    } else {
      // x/xs-1
      return Image.asset(
        ('images/landscape.png'),
        fit: BoxFit.fitWidth,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              getBackgroundContainer(12),
              Positioned(
                top: MediaQuery.of(context).size.height / 5,
                left: -35,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 + 60,
                  width: MediaQuery.of(context).size.width + 80,
                  child: Hero(
                    tag: 'image',
                    child: getLandscapeImage(12),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 1.5,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 60.0,
                      left: 0.0,
                      right: 0.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: <Widget>[
                        //     Text('05:04'),
                        //     Text('05:04'),
                        //     Text('05:04'),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 10,
                left: 40,
                right: 40,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width - 40,
                  child: Image.asset(
                    ('images/bottom_temp.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              // Positioned(
              //   bottom: MediaQuery.of(context).size.height / 6,
              //   left: MediaQuery.of(context).size.height / 9,
              //   child: Align(
              //     child: Row(
              //       children: <Widget>[
              //         Text('05:04'),
              //         SizedBox(
              //           width: 60.0,
              //         ),
              //         Text('05:04'),
              //         SizedBox(
              //           width: 60.0,
              //         ),
              //         Text('05:04'),
              //       ],
              //     ),
              //   ),
              // ),
              Positioned.fill(
                bottom: MediaQuery.of(context).size.height / 10,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    ('images/hline.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 40.0,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        'Tomorrow',
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 40.0,
                    width: 20.0,
                    child: Image.asset(
                      ('images/vline.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 40.0,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Center(
                      child: Text(
                        'Next 7 Days',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff444444)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 8),
            // bottom: MediaQuery.of(context).size.height / 10,
            // left: MediaQuery.of(context).size.width / 8,
            child: Align(
                  alignment: Alignment.bottomRight,
                  child:
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("05:04",
                      style: Theme.of(context).textTheme.subhead.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal)),
                  Text("05:04",
                      style: Theme.of(context).textTheme.subhead.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal)),
                  Text("05:04",
                      style: Theme.of(context).textTheme.subhead.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ),
            ),
          ),
            ],
          ),
          
          Padding(
            padding: EdgeInsets.only(top: 150.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 40.0,
                      child: Image.asset(
                        ('images/weather.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("40",
                        style: Theme.of(context).textTheme.subhead.copyWith(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("˚",
                            style: Theme.of(context).textTheme.subhead.copyWith(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text("C",
                            style: Theme.of(context).textTheme.subhead.copyWith(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                Text('Sunny with periodic clouds',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal)),
              ],
            ),
          ),
          Positioned(
            //padding: EdgeInsets.only(top: 50.0, left: 20.0),
            top: 50.0,
            left: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Today, 12 May 19",
                    style: Theme.of(context).textTheme.subhead.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10.0,
                ),
                Text('Current location',
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Colors.white, fontWeight: FontWeight.normal)),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 3.3,
            left: MediaQuery.of(context).size.width / 2.1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("40",
                      style: Theme.of(context).textTheme.subhead.copyWith(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.normal)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("˚",
                          style: Theme.of(context).textTheme.subhead.copyWith(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.normal)),
                      Text("C",
                          style: Theme.of(context).textTheme.subhead.copyWith(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 3.8,
            left: MediaQuery.of(context).size.width / 2.23,
            child: Text("05:04",
                style: Theme.of(context).textTheme.subtitle.copyWith(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.normal)),
          ),
          
          // Positioned(
          //   bottom: 80,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: <Widget>[
          //       Text("05:04",
          //           style: Theme.of(context).textTheme.subhead.copyWith(
          //               color: Colors.black,
          //               fontSize: 20,
          //               fontWeight: FontWeight.normal)),
          //       Text("05:04",
          //           style: Theme.of(context).textTheme.subhead.copyWith(
          //               color: Colors.black,
          //               fontSize: 20,
          //               fontWeight: FontWeight.normal)),
          //       Text("05:04",
          //           style: Theme.of(context).textTheme.subhead.copyWith(
          //               color: Colors.black,
          //               fontSize: 20,
          //               fontWeight: FontWeight.normal)),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
