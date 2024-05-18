abstract class Category {
  selectCategory(double discount);
}

class Product extends Category {
  String? _title;
  late int _price;
  int? _id;
  late int _quantity;
  double? _discount;

  setPriceQuantity(int price, int quantity, String title) {
    this._price = price;
    this._quantity = quantity;
    this._title = title;
  }

  @override
  selectCategory(double discount) {
    print("Product name :$_title");
    print("Product price :$_price");
    _discount = discount;
    var finalPrice = _price * _discount!;
    print("The number after discount is $finalPrice");
    if (finalPrice > 700) {
      print("Product is more than 700 - high category");
    } else
      print("Product is lower than 700 - low category");
  }
}

class ProductDetails extends Product {
  calculatePrice() {
    return _price * _quantity;
  }
}
