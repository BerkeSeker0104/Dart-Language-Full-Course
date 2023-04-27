void main(List<String> args) {
  final User = _User("Berke", age: 17);

  // Musterinin yasi 18den kucuk kontrolu yapar misin ?

  if (User.age is int) {
    if (User.age! < 18) {
      print("evet kucuk");
      User.updateMoneyWithString("TR");
    }
  } else {
    User.updateMoneyWithNumber(15);
  }

  // kullanicilarin parasi var ama paranin tipi degisken olabilir,
  // parasi olan adamin o parametresi bir isimde olabilir veya deger olabilir
  // tr yazacak ya da orada  yazabilir
  // ekranda goster
  final _newType = User.moneyType is String ? (User.moneyType as String) : "";

  print(_newType + "A");

  final moneyBank1 = Bank(40, "12");
  final moneyBank2 = Bank(30, "12");

  print(moneyBank1 == moneyBank2);
  final newResult = "a" + "a";

  // musteri banka sinifindan iki kisinin parasini toplayip sonucunu söyler misin?

  print(moneyBank1 + moneyBank2); // metot ile dahil ettik.

  // benim bankama gelen müşterimin id leri aynı müşteri olmalıdır.
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank {
  final int money;
  final String id;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return this.money + newBank.money;
  } // metot ile dahil ettik.

  @override
  String toString() {
    return super.toString() + "Veli";
  }

  @override
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  } // bu koşulu sağlıyorsa bu datalar benim için aydnıdr.
}
