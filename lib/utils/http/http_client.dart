
import 'package:http/http.dart' as http;
import 'dart:convert';

class RHttpHelper {
  static const String _baseUrl = 'http://your- api- base--url.com';



  //Helper method to get request
static Future<Map<String, dynamic>> get(String endpoint)async{
  final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
  return _handleResponse(response);
}

//Helper method to make  a post request
static Future<Map<String,dynamic>> post(String endpoint,dynamic data)async{
  final response = await http.post(
    Uri.parse('$_baseUrl/$endpoint'),
    headers:{'Content-Type':'application/json'},
    body:jsonEncode(data),

  );
return _handleResponse(response);
}
//Helper method to make a put request
static Future<Map<String,dynamic>> put(String endpoint, dynamic data)async{
  final response  = await http.put(
    Uri.parse('$_baseUrl/$endpoint'),
    headers: {'Content-Type': 'application/json'},
    body:json.encode(data),
  );
  return _handleResponse(response);
}
//Handle The Http response
 static Future<Map<String, dynamic>> delete(String endpoint)async{
  final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
  return _handleResponse(response);
 }

 //Handle the http response
static Map<String,dynamic> _handleResponse(http.Response response){
  if(response.statusCode == 200){
    return json.decode(response.body);

  }else{
    throw Exception('Failed to load data:${response.statusCode}');

  }
}

}