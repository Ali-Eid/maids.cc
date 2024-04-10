Task Manager App - Flutter Test Project
This Flutter project showcases a task manager application built as a developer hiring process test. It demonstrates proficiency in various Flutter development aspects, excluding unit tests.

Features:

Secure Login: Secure user authentication leveraging [invalid URL removed]'s mock API for usernames and passwords.
Task Management: Users can effortlessly view, add, edit, and delete tasks. Data is fetched from [invalid URL removed]'s todos API.
Efficient Pagination: Seamless handling of large task lists through pagination using the capabilities provided by [invalid URL removed]'s API.
Flexible State Management: Choose your preferred state management pattern (Provider, Bloc, or Redux) for efficient state handling throughout the application.
Persistent Local Storage: Tasks are persistently stored using either Flutter's SharedPreferences or a SQLite database, ensuring data remains accessible even after app closure.
Technologies Used:

Flutter
[invalid URL removed] API (for user authentication and task data)
Project Setup:

Clone this repository.
Install dependencies: flutter pub get
Configure API keys (if applicable) for [invalid URL removed].
Run the app: flutter run
Note: Unit tests are excluded in this project to focus on other development aspects.

Design Decisions:

This project prioritizes a clean, maintainable codebase while delivering a user-friendly experience. Here are the key architectural choices:

Clean Architecture: The application adheres to the Clean Architecture principles, ensuring a clear separation of concerns between the business logic, data layer, and UI presentation. This promotes testability, flexibility, and code reusability.
MVVM Design Pattern: The Model-View-ViewModel (MVVM) design pattern is implemented to efficiently manage data flow and UI updates. This provides a clear separation between UI (views), data models (models), and the business logic (view models), leading to a more maintainable and testable codebase (although unit testing is not included in this project).
Dependency Injection: We leverage dependency injection to promote loose coupling between components. This allows for easier testing, mocking of dependencies, and improved code maintainability. Concrete implementations are injected at runtime, enabling flexibility and testability.
Caching with SharedPreferences: To enhance performance and user experience, frequently accessed task data is cached locally using Flutter's SharedPreferences. This ensures smoother operation even with limited network connectivity.
Beautiful & Simple UI: A focus was placed on creating a visually appealing and user-friendly interface. The UI prioritizes clarity and simplicity, leveraging Flutter's rich widget library to create a design that is both aesthetically pleasing and intuitive to navigate.
By combining these design choices, we aimed to achieve a well-structured, maintainable, and performant application that delivers a positive user experience.

Contribution

Feel free to fork this repository and contribute your improvements!

We hope this project provides a valuable demonstration of your Flutter development skills.
