import 'dart:convert';
import 'dart:developer';
import 'package:figma/fluxstore_api_with_riverpod/repositry/base_repo.dart';
import 'package:figma/fluxstore_api_with_riverpod/utills/api_urls.dart';

class AuthRepositry2 extends BaseRepository2 {
  //post login api
  Future<void> login(Map<String, dynamic> data) async {
    final response = await postHttp(data: data, api: ApiUrls.login);
    log(response.statusCode.toString());
    log(response.body, name: 'loginApi');
    return json.decode(response.body);
  }

  //get category apo
  Future getCategoryApi() async {
    const url = ApiUrls.product + ApiUrls.category;
    final response = await getHttp(api: url);
    log(response.body, name: 'getCategoryApi');
    return json.decode(response.body);
  }

  //get category particular products
  Future getCategoryproductApi(String productType) async {
    final url = '${ApiUrls.product}${ApiUrls.particlarCategory}/$productType';
    final response = await getHttp(api: url);
    log(response.body, name: 'get Particular CategoryApi');
    return json.decode(response.body);
  }

  // get all the products
  Future getAllProduct() async {
    const url = ApiUrls.product;
    final response = await getHttp(api: url);
    log(response.body, name: 'getProductApi');
    return json.decode(response.body);
  }

  // get all particular the products
  Future getParticularProduct(String id) async {
    var url = ApiUrls.product + id;
    log(url, name: 'product item');
    final response = await getHttp(api: url);
    log(response.body, name: 'getParticularItem');
    return json.decode(response.body);
  }

  //sort for product order
  Future sortProducts(String descending) async {
    final apiUrl = '${ApiUrls.product}?sort=$descending';
    log(apiUrl, name: 'get sort');
    final response = await getHttp(api: apiUrl);
    log(response.body, name: 'sort products order');
    return json.decode(response.body);
  }

  //post add cart
  // ignore: non_constant_identifier_names
  Future AddCartProduct({
    required Map<String, dynamic> data,
    required String id,
    required DateTime date,
  }) async {
    final response = await postHttp(
      api: ApiUrls.cart,
      token: true,
      data: data,
    );
    log(response.body, name: 'response add ca');
    return json.decode(response.body);
  }
}
