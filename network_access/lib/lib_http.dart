import 'package:dio/dio.dart';
import 'package:network_access/transfert.dart';

class SingletonDio{
  static Dio getDio(){
    Dio dio = Dio();
    return dio;
  }
}

List<NumberResponse> list = [];

Future<List<NumberResponse>> getNumber(int num) async{
  try{
    var response = await SingletonDio.getDio().get("https://4n6.azurewebsites.net/exam/representations/" + num.toString());
    print(response);

    var listeJSON = response.data as List;
    var listNumberResponse = listeJSON.map(
        (e){
          return NumberResponse.fromJson(e);
        }
    ).toList();

    list = listNumberResponse;
    return list;
  }
  catch(e){
    print(e);
    throw(e);
  }
}