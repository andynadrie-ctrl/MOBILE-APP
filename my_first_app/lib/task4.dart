class Product {
  final String name;
  final String brand;
  
  const Product(this.name,this.brand);
  String get productInfo{
    return "$name was made by $brand";
  }

  void describe(){
    print("Book: $name");
    print("Author: $brand");
  }
}
Future<String>loadMessage() async {
  await Future.delayed(Duration(seconds: 1));
  return "Book info loaded effectively";
}
void main() async{
  const myproduct  =Product("SUper milk", "Broli");

  print(myproduct.productInfo);
  myproduct.describe();

  //asynchronous function
  String message = await loadMessage();
  print(message);
}