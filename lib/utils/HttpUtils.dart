import 'dart:io';
import 'dart:convert';

class HttpUtils {
  Map<String,dynamic> result;
  var httpClient = new HttpClient();
  var uri = Uri.parse("https://news-at.zhihu.com/api/2/news/latest");
  bool requestStatus ;
  int statusCode = 200;
  //原生get请求
  Future<Map<String,dynamic>> nativeGet() async {
    var request = await httpClient.getUrl(uri);
    var response = await request.close();
    if (response.statusCode == HttpStatus.OK) {
      requestStatus = true;
      var responseBody = await response.transform(utf8.decoder).join();
      print("responseBody:" + responseBody);
      result = json.decode(responseBody);
//      print("test:" + data.toString());
    } else {
      requestStatus = false;
      statusCode = response.statusCode;
      print(response.statusCode);
    }
  }

  post() async {
    var request = await httpClient.postUrl(uri);
    var response = await request.close();
    if (response.statusCode == HttpStatus.OK) {
      var responseBody = await response.transform(utf8.decoder).join();
      var data = json.decode(responseBody);
    }
  }
}


