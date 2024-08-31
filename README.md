# Todo List App - SwiftUI

## Overview

This project involves building a simple yet fully functional to-do list app using the **MVVM (Model-View-ViewModel) architecture** in SwiftUI. The app is designed with foundational practices in mind, such as safe coding and adaptability for various devices (iPhone, iPad) and modes (light/dark). 

### Key Features

- **MVVM Architecture**: The app is built using the MVVM pattern, which separates the user interface, data, and business logic. This architecture is key to making the app modular and scalable.
  
  - **View**: The UI layer of the app, responsible for displaying data and handling user interactions. Two main views are created:
    - A view to display a list of to-do items.
    - A view to add new items to the list.
  
  - **Model**: A custom data type that represents the to-do items. Each item includes:
    - A title
    - A unique ID
    - A boolean value to indicate whether the item is completed
  
  - **ViewModel**: Acts as the intermediary between the View and the Model. It holds all the data for the views and manages the logic for creating, reading, updating, and deleting to-do items. This is the core component of the MVVM architecture.

### Persistence

- **UserDefaults Integration**: The app utilizes UserDefaults to persist data across sessions. This means that to-do items are saved and retained even when the app is closed and reopened.

### User Experience Enhancements

- **Empty State Handling**: To improve user experience, a message is displayed when the to-do list is empty, prompting users to add new items. Additionally, animations are included to make the app more engaging.
  
- **Adaptability**: The app is designed to look and perform well across various devices and orientations:
  - **Portrait and Landscape Modes**
  - **iPhone and iPad Compatibility**
  - **Light and Dark Modes**

### App Store Readiness

- **Launch Screen and App Icon**: The final steps include adding a launch screen (a startup loading screen) and an app icon. These are essential for submitting the app to the App Store, ensuring a professional and complete user experience.

## Conclusion

This project demonstrates how to implement the MVVM architecture in a SwiftUI app, following best practices for building a simple to-do list application. It includes building views, creating models, managing data with ViewModels, and persisting data with UserDefaults. Additionally, the app is optimized for various devices and modes, ensuring a polished user experience. Finally, it prepares the app for deployment by adding a launch screen and an app icon, making it ready for submission to the App Store. This project serves as a comprehensive example for creating a functional and professional SwiftUI application.


