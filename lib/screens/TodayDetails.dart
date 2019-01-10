import 'package:flutter/material.dart';

class TodayDetails extends StatefulWidget {
  String url;
  TodayDetails({Key key, this.url}) :super (key: key);

  static const String routeName = "/todayDetails";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    print(url);
    return new TodayDetailsState(url);
  }

}

class TodayDetailsState extends State<TodayDetails> {
  TodayDetailsState(String url);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("details");
    return new Scaffold(
      body: new Text("todayDetails"),
    );
  }
}

