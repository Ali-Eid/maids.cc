class EndPoints {
  static const String authEndPoint = 'auth/login';
  static const String profileEndPoint = 'auth/me';
  static const String refreshEndPoint = 'auth/refresh';

  //Todos
  static const String todosEndPoint = 'todos';
  static const String singleTodoEndPoint = 'todos/{id}';
  static const String randomTodoEndPoint = 'todos/random';
  static const String todosByUserIdEndPoint = 'todos/user/{id}';

  static const String addTodo = 'todos/add';
  static const String updateTodo = 'todos/{id}';
  static const String deleteTodo = 'todos/{id}';
}
