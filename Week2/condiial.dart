void main() {
  int money = 15;
  String userName = "Berke Seker";

  // bool => 0 : 1  bool true false fonksiyonudur.
  bool isCustomerRich = false;
  print("$userName" + " " + "$money");

  // if - else
  if (money > 10) {
    print("Sen zenginsin !");
  } else {
    //Kodumuzda if koşulu sağlamazsa else koşulu çalışır.
    print("gerekirse simit yeriz !");
  }

  money = money - 10; // tek eşittirin anlamı bir şeyi atamaktır.

  if (money > 10) {
    print("Sen çok zenginsin !");
  } else {
    print("abi burada ne işin var !");
  }

/* example 
Müşteri bankaya gelir ve parası 30 Tl dir.
Müşteri sorgu yapmak ister, sorgu yapabilmesi için ;
    bankingCost'dan mevcut parasının büyük olması lazım
sorgulama sonucunda 10 tl kesintiye uğrar.
Kalan parası bankingCostGeneral den fazla ise işlem sırası alsın,
kalan parası yetersiz ise kredesini ödemesini söyleyelim.
*/

  int newCustomerMoney = 30;
  const int bankingCost = 5;
  const int bankingCostGeneral = 10;

  if (newCustomerMoney > bankingCost) {
    print("Hoş geldiniz Beyefendi !");
    newCustomerMoney = newCustomerMoney - bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print("Beyefendi lütfen işlem sırası alın!");
  } else {
    print("Beyefendi işlem yapmadan önce kredinizi ödeyin !");
  }

/*
Bir mağazaya isim verilecek, 
verilen örnek isimler toplanacaktır,
ornek isimler : berke, yuzge, gorke, kx, x
magaza der ki ben sadece karakter uzunluğu iki ve daha
fazla olanları görmek istiyorum 
bu koşula uyanları yan yana görmek istiyorum
 */

  final String ahmetCompany = "berke";
  final String yuzgeCompany = "yuzge";
  final String gorkeCompany = "gorke";
  final String kxCompany = "kx";
  final String xCompany = "x";

  const int companyLenght = 2;
  String results = "";

  if (ahmetCompany.length > companyLenght) {
    results = results + ahmetCompany;
  } //nokta koyduktan sonra oradan seçenekler var.

  // ".length" string kaç karakterden oluştuğunu gösteriyor.

  if (yuzgeCompany.length > companyLenght) {
    results = results + " " + yuzgeCompany;
  }

  if (gorkeCompany.length > companyLenght) {
    results = results + " " + gorkeCompany;
  }

  if (kxCompany.length > companyLenght) {
    results = results + " " + kxCompany;
  }

  if (xCompany.length > companyLenght) {
    results = results + xCompany;
  }

  if (results.isEmpty) {
    print("Patron bulamadık !");
  } else {
    print(results);
  }
}
