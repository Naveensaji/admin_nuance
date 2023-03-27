class ProductModel{
final String doc;
final String name;
final String price;
final String quantity;
final String description;
final String connectiontype;
final List imagelist;

ProductModel({
  required this.doc,
  required this.name,
  required this.price,
  required this.quantity,
  required this.description,
  required this.connectiontype,
  required this.imagelist,
});

Map<String,dynamic>toJson()=>{
    'name':name,
    'price':price,
    'quantity':quantity,
    'description':description,
    'connectiontype':connectiontype,
    'image':imagelist,
    'doc':doc
};
static ProductModel fromJson(Map<String,dynamic>json)=>ProductModel(
      name: json['name'],
      price: json['price'],
      quantity: json['quantity'],
      description: json['description'],
      connectiontype: json['connectiontype'],
      imagelist: json['image'],
      doc: json['doc'],


 );

}

