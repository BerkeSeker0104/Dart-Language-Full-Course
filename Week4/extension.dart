/* 
Extension methods

varolan kitaplıkları işlevsellik ekler. 

*/

enum Car {
  Ford,
  Audi,
  Ferrari,
  Mercedes,
}

extension CarSelectedExtension on Car {
  bool isCheckName(String name) {
    return this.name == name;
  } //kullanıcının verdiği arac ismi ile uyuşuyor mu kontrol ediyor.
}

void main(List<String> args) {
  final customerCar = Car.Audi;
  print(customerCar.index);
  print(customerCar.name);

  if (customerCar.isCheckName("Mercedes")) {
    print("eşleşti");
  } else {
    print("Eşleşmedi");
  }
}
