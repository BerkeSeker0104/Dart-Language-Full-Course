void main() {
  final normalUser1 = User("Berke", 100);

  print(normalUser1.money);

  final bankUser1 = bankUser("Görke", 150, 123);

  bankUser1.sayMoneyWithCompanyName();

  final userSpecial = specialUser("Özge", 2000, 05062001, 50);

  print(userSpecial.calculateMoney);

  print(userSpecial.money); // ana para değişmez çünkü sadece hesaplandı.
}

// bütün classlarda paraları görebilmek istiyorum
// aşşağıda yaptığım gibi her classa ayrı ayrı yazarım ama bu uğraştırır.

// Class Extends dediğimiz her zaman işimize yarayacak bir yöntem öğrenelim :
// "abstract class" soyut sınıflar denir ortak metotları ana classlarda yapmamıza yarar.
// "abstract class" sayesinde bütün classlarda işlem yapabileceğiz.
// "abstract class" normal class da kullanmak için extends "class adı" yazılmalı

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print("Ahmet- $money paraniz vardir.");
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
  // yukarıda ki ":super" name ve moneyi "IUser" taşımış oluyoruz.

  /* void sayMoneyWithCompanyName() {
    print("Ahmet- $money paraniz vardir.");
  }
  */
}

class bankUser extends IUser {
  final int bankingCode;

  bankUser(String name, int money, this.bankingCode) : super(name, money);
// yukarıda name ve money ortak metot olarak kullanarak yazdığımız için,
// bankUser kısmında tiplerini verdik

  /* void sayMoneyWithCompanyName() {
    print("Ahmet- $money paraniz vardir.");
  }
  */
}

class specialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _disccount;

  specialUser(this.name, this.money, this.bankingCode, int disccount)
      : super(name, money) {
    _disccount = disccount;
  }

  /* void sayMoneyWithCompanyName() {
    print("Ahmet- $money paraniz vardir.");
  }
  */

  int get calculateMoney => money - (money ~/ _disccount);
  /*
  get ve set değişkenler üzerinde işlem yapabilmemizi sağlayan basit fonksiyonlardır.
  Get fonksiyonumuzu döndürür. Set fonskiyonumuz da değer atar.
   */
}
