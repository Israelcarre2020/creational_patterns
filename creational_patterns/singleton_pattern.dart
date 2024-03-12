///
/// Singleton Pattern
///
/// Description:
///
/// In a restaurant management system, we need to handle different types of orders
/// (takeaway, dine-in, delivery, etc.). We want a flexible way to create order processing
/// objects for each type without the client having to know the exact implementation of each one.
///

void main() {
  AuthManager authManager1 = AuthManager();
  AuthManager authManager2 = AuthManager();

  print(identical(authManager1, authManager2)); // Expected Output: true
}

class AuthManager {
  static final AuthManager _instance = AuthManager._internal();

  factory AuthManager() {
    return _instance;
  }

  AuthManager._internal();

  void authenticate(String username, String password) {
    print('Authenticating user: $username');
  }
}
