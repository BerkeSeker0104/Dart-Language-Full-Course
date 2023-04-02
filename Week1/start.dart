// ctrl+shift+P  kısayolunu kullandığında oradan flutter ya da dart açabilirsin.
void main() {
  print("Hello World");

  /* Kodumuzu iki türlü çalıştırabiliriz, void fonk. üstünden run tuşu ile 
  ya da terminalden dart week1/start.dart yazarak. */

  print(2 + 3);

  /* Yukarıdaki kodlar nasıl çalıştı ? 
  kodlar veri tipleri sayesinde çalıştı. */

  // String verininAdi = "verinin değeri";
  // yukarıda bir obje belirleyip içini istediğimiz gibi değiştirebiliriz.
  // objeleri anlamlı isimler koymalısınız

  String Hello = "Hello3";

  print(Hello);

  int Money = 15;

  print(Money);

  //  print(Hello + Money); bu şekilde kullanırsan hata alırsın.
  /* Çünkü veri tipleri farklı buna çözüm olarak int veri tipini string yapmak 
 için çift tırnak içinde dolar işareti ve obje adını yaz. */

  print(Hello + " " + "$Money");
}
