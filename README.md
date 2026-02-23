# 🚗 Dart Car Rental CLI System

A command-line based car rental management system built with **Dart**.  
This project demonstrates object-oriented programming (OOP), asynchronous operations, and rental business logic simulation.

---

## 📌 Overview

This application allows users to:

- View available cars
- Rent a car
- Return a rented car
- Simulate rental processing with async operations
- Handle invalid inputs using try-catch
- Manage user balance during rental transactions

The system runs entirely in the terminal and focuses on clean structure and logical design.

---

## 🛠 Tech Stack

- Dart
- Object-Oriented Programming (OOP)
- Async / Await
- Future.delayed
- CLI Input / Output
- Error Handling (try-catch)

---

## 🧠 Architecture & Logic

### 🔹 Car Class

Each car contains:

- `marka` (brand)
- `model`
- `qiymet` (daily rental price)
- `nomre` (ID)
- `vezyyet` (availability status)

Encapsulated with a `show()` method to display car details in a structured format.

---

### 🔹 Rental Process Simulation

The rental confirmation includes an asynchronous loading simulation using:

```dart
Future.delayed()
```

This mimics real-world processing time and demonstrates async programming concepts.

---

### 🔹 Business Logic Flow

1. User selects a menu option
2. System validates input
3. If renting:
   - User selects a car
   - Selects rental duration
   - Total cost is calculated
   - Balance is checked
   - Rental process simulation runs
4. Car availability updates accordingly

---

## ▶️ How to Run

### 1️⃣ Install Dart SDK  
Make sure Dart is installed on your machine.

### 2️⃣ Clone the repository

```
git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY_NAME.git
```

### 3️⃣ Navigate to project folder

```
cd YOUR_REPOSITORY_NAME
```

### 4️⃣ Run the project

```
dart run main.dart
```

---

## ⚡ Key Concepts Demonstrated

- OOP structure
- Class modeling
- List management
- Async programming
- CLI interaction
- Input validation
- Business logic simulation

---

## 🎓 Education & Training

The Dart and programming knowledge used in this project was developed through professional training at **Compstyle Technology**.

🌐 https://compstyle.tech

Training focus areas:

- Dart programming fundamentals
- Object-Oriented Programming (OOP)
- Async programming
- Logic building and problem solving
- Real-world project development

---

## 🔮 Future Improvements

- Improve return validation logic
- Replace boolean availability with Enum
- Add balance top-up feature
- Add persistent storage (file or database)
- Convert the system into a Flutter UI application
- Apply Clean Architecture principles

---

## 👨‍💻 Author

Quliyev Murad 
Flutter & Dart Developer  
Computer Science Student  

---

⭐ If you found this project useful, feel free to star the repository.
