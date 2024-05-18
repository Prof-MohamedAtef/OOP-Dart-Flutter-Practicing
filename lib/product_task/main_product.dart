import 'package:amit_training/product_task/product.dart';
void main(){
  // task 1
  var x = ProductDetails();
  x.setPriceQuantity(50, 3, "T-shirt");
  print(x.calculatePrice());

  // task 2

  var z = Product();
  z.setPriceQuantity(50, 3, "T-shirt");
  z.selectCategory(3);
}