# 📚 LitLoop – Clean Architecture Flutter Prototype

LitLoop is a **prototype Flutter application** built to demonstrate Clean Architecture principles in a real-world context. The project includes an implemented **Home screen** that fetches book data from a live API and caches it locally using **Hive**. While other features are not yet functional, the structure showcases clean, scalable architecture in Flutter.

---

## 🚀 Features (Prototype Scope)

- 🏠 **Home Screen** with functional data flow
- 🌐 Fetches real data from a book API
- 💾 Caches API results locally using Hive
- ⚙️ Built with layered Clean Architecture
- 💡 Ideal as a reference or starter structure

---

## 🧠 Project Architecture

The app uses the **Clean Architecture** pattern, with clear separation of concerns across the following layers:

lib/
├── core/ # Shared utilities, widgets, services
│ ├── errors/
│ ├── use_cases/
│ ├── utils/
│ └── widgets/
│
├── features/
│ ├── home/
│ │ ├── data/ # Data sources, models, repositories
│ │ ├── domain/ # Entities, use cases, repository contracts
│ │ └── presentation/ # Cubits, views, widgets
│ │
│ ├── search/ # Placeholder only
│ └── splash/ # Placeholder only
│
├── constants.dart
└── main.dart


---

## 🛠️ Tech Stack

- **Flutter**
- **Cubit (flutter_bloc)**
- **Hive** for local caching
- **GetIt** for dependency injection
- **Live API integration**
- **Clean Architecture**

---

## 📂 Layered Breakdown

- **Domain Layer**  
  Business rules and contracts (`entities/`, `use_cases/`, `repos/`)

- **Data Layer**  
  Models, local/remote data sources, repository implementations

- **Presentation Layer**  
  UI widgets, views, and Cubit state management

---

## ✅ Current Functionality

- ✔️ **Home screen** works fully
- ✔️ Fetches **featured** and **newest** books from the API
- ✔️ Stores results in **Hive** cache
- ❌ Search and other views are placeholders

---

## 🧪 How to Run the App

1. **Clone the repo**:
   ```bash
   git clone https://github.com/your_username/litloop.git
   cd litloop
   
Install dependencies:
flutter pub get

Run the app:
flutter run