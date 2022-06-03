import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ApiHandler{
  String base_url = "http://10.0.10.24:5000";

  var log = Logger();

  Future<dynamic> get(String url) async{
    url = formater(url);
    var response = await http.get(Uri.parse(url));

    log.i(response.body);
    log.i(response.statusCode);
  }

  Future<dynamic> post(String url,Map<String,String>body)async{
    url = formater(url);
    var response = await http.post(Uri.parse(url),body: body);
    if(response.statusCode == 200 || response.statusCode == 201){
      log.i(response.body);
      return response;
    }
    log.d(response.body);
    log.d(response.statusCode);
  }


  String formater(String url){
    return base_url+url;
  }
}