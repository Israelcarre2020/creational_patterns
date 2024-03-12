///
/// Singleton Pattern
///
/// Description:
///

///In this example, the Singleton pattern is used to ensure that there is only
///one instance of the Database class throughout the application, which ensures
///that all parts of the system use the same database connection.
///
///

void main() {
  Database db = Database();
  db.connect();
  db.query('SELECT * FROM users');

  Database anotherDb = Database();
  anotherDb.query('DELETE FROM products'); // Use the same connection
}

class Database {
  static final Database _instance = Database._internal();

  factory Database() {
    return _instance;
  }

  Database._internal();

  void connect() {
    print('Connected to database');
  }

  void query(String queryString) {
    print('Executing query: $queryString');
  }
}
