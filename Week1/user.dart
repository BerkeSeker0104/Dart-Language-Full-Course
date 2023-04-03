void main() {
// musterinin adını tut,
//musterinin pararısını öğren
//musteriye merhaba diyip parasini söyle
//bizim bankaya geldiği icin parasina +5 ekle

  print("${25 + 5}"); // bu kod statik kod
  // Yukaridaki gibi print içinde dolar yapıp süslü parantez
  // içinde işlem yapabilirsin.

  String userName = "Veli";
  int userMoney = 25;
  userMoney = userMoney + 5;

  print("MErhaba $userName paraniz $userMoney");
  // Yukarıdaki kod gelişebilir bir koddur.

  print("------");

  userMoney = userMoney - 10;
  print("Paraniz deger kaybetti $userMoney");

  userMoney = userMoney + 5; //bu işlemi kısa yoldan yapalım
  userMoney += 5;

  print(userMoney);

  // Kusuratlı bir sayı icin double kullanabilirsin

  double ahmetMoney = 15.2;

  ahmetMoney = ahmetMoney / 2;

  print("Ahmet Bey paraniz uctu $ahmetMoney");

  /* int bir sayıyı ikiye böldüğünde sonuç kusuratlı olursa hata
  alır. Hata almamak için  "~" bölme işaretinden önce bunu
  kullanabilirsin. Yaklaşık olan sayıyı ekrana printlicek*/

/* Odev: yeni bir user adi olustur, yeni bir para ver,
bu parayi 2'ye bol ve ekranda goster.  */

  String userNameSurname = "Berke SEKER";
  double bankMoney = 200.05;

  print("Merhaba $userNameSurname Bey, bankada ki mevcut paraniz $bankMoney");
  bankMoney = bankMoney / 2;

  print("Paraniz deger kaubetti $bankMoney");
}
