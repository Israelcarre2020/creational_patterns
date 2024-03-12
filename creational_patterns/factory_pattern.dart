///
/// Factory Pattern
///
/// Description:
///
/// In a user management system, we need to have a single instance
/// of an object that handles user authentication throughout the application.
///

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
