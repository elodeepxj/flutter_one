import 'package:flutter/material.dart';
import 'package:flutter_one/screens/TodayDetails.dart';
import 'package:flutter_one/utils/DateUtils.dart';
import 'package:flutter_one/utils/HttpUtils.dart';
import 'package:flutter_one/bean/TopStoriesBean.dart';
import 'package:flutter_one/bean/ZhiHuListBean.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: new MyHomePage(title: 'HomePage'),
//      routes: <String, WidgetBuilder>{
//        TodayDetails.routeName: (BuildContext context) => new TodayDetails(),
//      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();

}


class _MyHomePageState extends State<MyHomePage> {
  static final _biggerFont = const TextStyle(fontSize: 18.0);
  HttpUtils httpUtils;
  ZhiHuListBean _zhiHuListBean;
  int _selectedIndex;
  List<Widget> _widgetOptions;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
    _selectedIndex = 0;
    getData();
  }

  //获取首页数据
  void getData() async {
    httpUtils = new HttpUtils();
    await httpUtils.nativeGet();
    if (httpUtils.requestStatus) {
      _zhiHuListBean = new ZhiHuListBean.fromJson(httpUtils.result);
      print(_zhiHuListBean.display_date);
      setState(() {
        _zhiHuListBean = new ZhiHuListBean.fromJson(httpUtils.result);
      });
    } else {
      print(httpUtils.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    _buildWidgetOptions(); //初始化每个页面
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
//        child: _bulidListView(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Text("Today")),
          BottomNavigationBarItem(
              icon: Icon(Icons.next_week), title: Text("More")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Setting")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.lightBlue,
        onTap: _onItemTapped,),
    );
  }

  /**初始化每个页面*/
  void _buildWidgetOptions() {
    _widgetOptions = [
      _bulidListView(),
      Text('Index 1: More'),
      Text('Index 2: Setting'),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _bulidListView() {
    print("_bulidListView");
    return new ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemBuilder: (context, i) {
          if (null != _zhiHuListBean) {
            if (i < _zhiHuListBean.top_stories.length) {
              return new GestureDetector(
                onTap: () {
                  print("111111111");
//                  Navigator.of(context).pushNamed("/todayDetails");
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) {
                      return new TodayDetails(url:_zhiHuListBean.top_stories[i].url);
                  }));
                },
                child: _buildItem(_zhiHuListBean.top_stories[i]),
              );
            }
          }
        }
    );
  }

  Widget _buildItem(TopStoriesBean topStoriesBean) {
    return new Card(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
      elevation: 3.0,
      shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text(
              topStoriesBean.title,
              style: _biggerFont,
              textAlign: TextAlign.center,
            ),
            onTap: () { //点击事件
//                Navigator.of(context).pushNamed("/todayDetails");
              print("2222222222");
            },
          ),
          new FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: topStoriesBean.image
          ),
          new Container(
              padding: const EdgeInsets.all(10.0),
              child: new Text(
                  DateUtils.getDate(topStoriesBean.ga_prefix),
                  style: new TextStyle(
                      color: Color(0xFFDDDDDD)
                  )))

        ],
      ),
    );
  }

}
