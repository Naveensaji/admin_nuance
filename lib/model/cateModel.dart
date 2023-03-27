class CategoryModel{
  final String name;

  CategoryModel({required this.name});
  Map<String,dynamic>toJson()=>{
    'name':name,
  };
  static CategoryModel fromJson(Map<String,dynamic>json)=>
  CategoryModel(name: json['name']);
}