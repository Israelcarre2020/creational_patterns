/// [Prototype Pattern]
///
/// The Prototype design pattern is used to allow the creation of new product instances
/// (such as laptops and phones) from existing instances, without the client having to know the exact
/// implementation of how those products are created. This is useful when we want to create objects that
/// share many properties with an existing prototype, but we need to modify some specific attributes of each instance.
///

void main() {
  Laptop originalLaptop = Laptop('Laptop', 1000);
  Laptop clonedLaptop = originalLaptop.clone();
  clonedLaptop.configure();

  Phone originalPhone = Phone('Phone', 500);
  Phone clonedPhone = originalPhone.clone();
  clonedPhone.configure();
}

abstract class Product {
  String _name;
  double _price;

  Product(this._name, this._price);

  String getName() {
    return _name;
  }

  double getPrice() {
    return _price;
  }

  Product clone();
}

class Laptop extends Product {
  Laptop(String name, double price) : super(name, price);

  void configure() {
    print('Configuring Laptop: ${getName()}');
  }

  @override
  Laptop clone() {
    return Laptop(getName(), getPrice());
  }
}

class Phone extends Product {
  Phone(String name, double price) : super(name, price);

  void configure() {
    print('Configuring Phone: ${getName()}');
  }

  @override
  Phone clone() {
    return Phone(getName(), getPrice());
  }
}
