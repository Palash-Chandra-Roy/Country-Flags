

import 'package:country_flags/Model/country_model.dart';

import 'package:http/http.dart' as http; 

class RemoteService{

  var client = http.Client();
 static  Future<List<Welcome>?> fatchdata()async{
    var response = await http.get(Uri.parse('https://restcountries.com/v2/all'));
    if( response.statusCode==200){
      print(" data ${response.body}");
    var  myresponse=response.body;
      return welcomeFromJson(myresponse);
    }
  }

}
