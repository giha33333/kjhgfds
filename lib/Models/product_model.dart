class ProductModel
{
  List<dynamic> items ;
  ProductModel({required this.items});
  factory ProductModel.ConvertFromJson (Map<String,dynamic>jsonData)
  {
    return ProductModel(items: jsonData['data']['products']);
  }
}