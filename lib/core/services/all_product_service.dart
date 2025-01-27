import '../helper/api.dart';
import 'package:store_app/model/product_model.dart';

class AllProductService{

  Future<List<ProductModel>> getAllProducts() async{

      List<dynamic> data = await Api().getRequest(url: 'https://fakestoreapi.com/products');
      List<ProductModel> productList = [];
      for(int i=0; i < data.length; i++){
        productList.add(
          ProductModel.fromJson(data[i]),
        );
      }
      return productList;
    }
}