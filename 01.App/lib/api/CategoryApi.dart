import 'package:http/http.dart'as http;
import 'package:petshop_app/config/apihelper.dart';
import 'package:petshop_app/model/Category.dart';

class CategoryApi {
  Future<List<Category>> getCategories() async {
    String myUrl ='${Apihelper.url_base}/categories/';
    print(myUrl);
    var response = await http.get(Uri.parse(myUrl));
    if (response.statusCode ==200){
      print("get");
      print(response.body);
    }
    return Category.listCategory(response.body);
  }
}