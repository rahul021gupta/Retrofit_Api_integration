import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit_api/model/model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: "https://prestashop.webkul.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(
      "/ps17/ps17-moduledemo/api/mobikul/getmoreproduct?p=1&id_lang=1&id_customer=49&width=1200&id_currency=1&ws_key=WE693XSH544NBFM95R1KFQJWWNSYJL81&object=popular&outputformat=json")
  Future<MyModel> getPosts();
}
