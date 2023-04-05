void main() {
  final int classDegree = 2;
  bool isSuccess = false;

  /* 
  2 ise ekrana bravo
  1 ise olur
  0 ise yeterli
  diğer durumlarda başarısız
   */

  const int succesValueHigh = 2; // yukarıdaki koşulları yazdım.
  const int succesValueMid = 1;
  const int succesValueLow = 0;

/*
switch-case, if-else göre daha perfonmaslı ve işlevseldir. 
Bundan ötürü switch-case ağırlıklı kullanabilirsin.
*/

  switch (classDegree) {
    case succesValueHigh:
      print("Bravo");
      break; /*break koyma sebebimiz case onaylanırsa
      diğerlerinin çalışmaması için. */

    case succesValueMid:
      print("Olur");
      break;

    case succesValueLow:
      print("yeterli");
      break;

    default:
      print("basarisiz");
      isSuccess = false;
  }

  print("Beyfendi cocugunuzun sonucu $isSuccess");

  // magazaya gelen isimlerden veli olan ya da ekin olan olursa;
  // print bravo yaz.
  String name = "veli";

  const String speacialUser1 = "veli";
  const String speacialUser2 = "ekin";

  switch (name) {
    case speacialUser1:
    case speacialUser2:
      print("bravo");
      break;

    default:
      print("Sorunlu");
  }
}
