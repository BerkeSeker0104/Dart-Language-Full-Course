/* 
Metotlar : Dart dilinde isimlendirilmiş kurucu metotlar, diğer
iki kurucu metot türünden farklı olarak bir sınıfın birden
çok kurucu metot tanımlayabilmesini sağlar.
Aynı isimdeki sınıfımıza ait farklı özellikteki nesnelerini 
oluşturmak için bu yöntem kullanılır.

Metotları kopyala yapıştır yerine bir tane ara işlem yapan
bir metot yaratıp işlerimizi yapar. Temiz kod ve 
geliştirilebilir kod için lazım.
 */

void main() {
/*
// benim bir musterim var parasi var mi yok mu kontrol eder misin?

  final int userMoney = 0;

  if (userMoney > 0) {
    print("Parası var");
  } else {
    print("Parası yok");
  }

  // Benim bir müşteirim daha geldi ona da bakar mısın ?

  final int user2Money = 5;

  if (user2Money > 0) {
    print("Parasi var");
  } else {
    print("Parasi yok");
  }

  /* diyelim ki  bir müşteri daha geldi döngüm böyle uzadı
  her seferinde if-else yapmak uzun sürer. Bunun için 
  metot yöntemini kullanmamız lazım. */

  */

  // yukarıdakinin aynısını metot yöntemi ile yapalım :

  // benim bir musterim var parasi var mi yok mu kontrol eder misin?
  // metot yöntemi kullan

  final int user1Money = 0;
  controlUserMoney(user1Money, 0); //metotumuzu kullandık.

  final int user2Money = 5; // 2.müşteri
  controlUserMoney(user2Money, 0);

  // bu örneğimizde yaptığımız gibi temiz ve geliştirilebilir,
  // bir koda sahip olduk.
  // geliştirilebilir derken neyi kast ediyoruz peki ?
  // aynı örnekten parası olup olmaması 10 tl ye göre yapılsın

  final double user3Money = 9.99;
  controlUserMoney(user3Money, 10);

  // Example 2
  // Bir müşteri gelir parasi 3450 Tl
  // parasini dolar yapmak istiyor ve kaç dolar olacağını merak ediyor

  final int userDolarMoney = 3450;

  int result = convertToDolar(userDolarMoney);
  print("Dolara çevirilmiş hali ${result} dolardır");

  /* bana bir dolar hesaplama yap, eğer ben sana söylemezsem 
  dolar kurunu 13'den say. */

  print(convertToStandartDolar(100, dolarIndex: 14));
  //yukarıda opsiyonel kodumuzu kullanmak için o kısmın adını vermek lazım.
  print(convertToStandartDolar(200));
  // aynı metodu dolarIndex parametresini göndermeden yaptık

  final newResult3 = convertToEuro(userMoney: 100, euroIndex: 15);
  print(newResult3);
}

void controlUserMoney(var money, int minumumValue) {
  if (money > minumumValue) {
    print("Parasi var");
  } else {
    print("Parasi yok");
  }
}

// bu metot parametre gönderip değer döndüren bir metot yaptık.
int convertToDolar(int userMoney) {
  return userMoney ~/ 13;
}
/* Retrun kullanımı değer döndürmeyi sağlayan fonksiyonlardır. */

int convertToStandartDolar(int userMoney, {int dolarIndex = 13}) {
  return userMoney ~/ dolarIndex;
}

/*Opsiyonel Programlamada bazı parametreleri göndermden de
  metotumuzu kullanabiliriz. Yukarıdaki kodumuzu opsiyonel 
  yapmak için "int dolarIndex" kısmını opsiyonel yapalım ; 
  o kısmı süslü paranteze alıyoruz ve ona sabit değer 
  veriyoruz.*/

// iki parametreyide opsiyonel yapalım:
int convertToEuro({required int userMoney, int euroIndex = 15}) {
  return userMoney ~/ euroIndex;
}
