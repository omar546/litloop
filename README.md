# 📚 LitLoop – Clean Architecture Flutter Prototype

LitLoop is a **prototype Flutter application** built to demonstrate Clean Architecture principles in a real-world context. The project includes an implemented **Home screen** that fetches book data from a live API and caches it locally using **Hive**. While other features are not yet functional, the structure showcases clean, scalable architecture in Flutter.

## 🚀 Features (Prototype Scope)

- 🏠 **Home Screen** with functional data flow  
- 🌐 Fetches real data from a book API  
- 💾 Caches API results locally using Hive  
- ⚙️ Built with layered Clean Architecture  
- 💡 Ideal as a reference or starter structure  

## 🛠️ Tech Stack
Flutter

Cubit (flutter_bloc)

Hive for local caching

GetIt for dependency injection

Live API integration

Clean Architecture pattern

## 📂 Layered Breakdown
Domain Layer
Business rules and contracts (entities/, use_cases/, repos/)

Data Layer
Models, local/remote data sources, repository implementations

Presentation Layer
UI widgets, views, and Cubit state management

## ✅ Current Functionality
✔️ Home screen works fully
✔️ Fetches featured and newest books from the API
✔️ Stores results in Hive cache
✔️ animated splash screen
❌ Search and details are just placeholders


<img width="1080" height="1080" alt="on git hub show apps" src="https://github.com/user-attachments/assets/57fd80a7-dd4f-4a5b-8596-b041da8a97c6" />


## 🧠 Project Architecture

The app uses the **Clean Architecture** pattern, with clear separation of concerns across the following layers:

```plaintext
lib/
├── core/                      # Shared utilities, widgets, services
│   ├── errors/
│   ├── use_cases/
│   ├── utils/
│   └── widgets/
│
├── features/
│   ├── home/
│   │   ├── data/              # Data sources, models, repositories
│   │   ├── domain/            # Entities, use cases, repository contracts
│   │   └── presentation/      # Cubits, views, widgets
│   │
│   ├── search/                # Placeholder only
│   └── splash/                
│
├── constants.dart
└── main.dart

