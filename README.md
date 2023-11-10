# Note App

Note App is a Flutter-based application designed for creating, editing, and deleting notes. It utilizes the Hive library for efficient data storage and follows a state management approach using the Bloc library.

## Features 🎯

- **Add, Edit, and Delete Notes:** Users can create new notes, edit existing ones, and delete notes as needed.
- **Efficient Data Storage:** Hive library is used for local data storage, providing a fast and lightweight database solution.
- **State Management with Bloc:** Bloc pattern is implemented for efficient state management, ensuring a clean and predictable flow of data within the application.

## Technologies Used

- **Flutter:** The application is developed using the Flutter framework for a consistent cross-platform experience.
- **Hive:** A lightweight and fast NoSQL database used for local data storage.
- **Bloc Library:** Bloc pattern is employed for state management, separating business logic from the UI.
 
## Usage

Note App is designed to streamline the process of managing notes efficiently. Users can easily add, edit, and delete notes with a straightforward user interface.

## Bloc State Management

Bloc pattern is implemented for state management:

- **Bloc:** Manages the application's business logic and communicates with the UI.
- **Events:** Trigger actions or events that can lead to a change in the application's state.
- **States:** Represent the different states the application can be in, ensuring a clear and predictable flow of data.

## Hive Data Storage

Hive library is utilized for local data storage:

- **Box:** Represents a storage container for storing notes efficiently.
- **Types Adapters:** Used to serialize and deserialize complex objects for storage.
