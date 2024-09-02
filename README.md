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

Created a professional swiftUI application, implemented a clean MVVM architecture with safe coding practices, handled all CRUD operations in the view model, and optimized the app for both light and dark modes, iPad, and horizontal orientation, adding a polished app icon and launch screen making it App Store ready.


