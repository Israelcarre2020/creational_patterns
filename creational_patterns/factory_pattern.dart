///
/// Factory Pattern
///
/// Description:
///

////// In a restaurant management system, we need to handle different types of orders
/// (takeaway, dine-in, delivery, etc.). We want a flexible way to create order processing
/// objects for each type without the client having to know the exact implementation of each one.

void main() {
  OrderFactory factory = TakeAwayOrderFactory();
  Order order = factory.createOrder();
  order.process(); // Expected Output: Processing Takeaway Order
}

abstract class Order {
  void process();
}

class TakeAwayOrder implements Order {
  @override
  void process() {
    print('Processing Takeaway Order');
  }
}

class DeliveryOrder implements Order {
  @override
  void process() {
    print('Processing Delivery Order');
  }
}

abstract class OrderFactory {
  Order createOrder();
}

class TakeAwayOrderFactory implements OrderFactory {
  @override
  Order createOrder() {
    return TakeAwayOrder();
  }
}

class DeliveryOrderFactory implements OrderFactory {
  @override
  Order createOrder() {
    return DeliveryOrder();
  }
}
