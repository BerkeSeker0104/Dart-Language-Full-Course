/* 
Enum constant değerleri tutmak için kullanılır.
Enum demek sınıflandırma demektir.
Enums value tutan bir class'tır.
Enums kodunu kullanmak geliştirilebilirlik ve perfonmas açısından 
yararlıdır.
Enums tam sayı sınıflandırma demektir. (0, 1, 2, ...)

ileride daha fazla göreceğiz..
*/

enum Mouses {
  Monster,
  Apple,
  A4,
  Logitech,
}

void main(List<String> args) {
  final customerMouse = Mouses.Monster;

  print(customerMouse.index);

  print(customerMouse.name);

  switch (customerMouse) {
    case Mouses.Monster:
      break;
    case Mouses.Apple:
      break;
    case Mouses.A4:
      break;
    case Mouses.Logitech:
      break;
  }
}
