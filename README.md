# 🏡 AirbnbCloneApp

A SwiftUI-powered Airbnb clone for iOS showcasing property listings with image carousels, detailed views, and interactive search filters. Created as a concept project to explore SwiftUI navigation, MapKit, and MVVM architecture.

![Swift](https://img.shields.io/badge/Swift-5.9-orange)
![iOS](https://img.shields.io/badge/iOS-17.5+-blue)
![Xcode](https://img.shields.io/badge/Xcode-15-green)
![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)

## 🛠 Technologies Used

- Swift  
- SwiftUI  
- MapKit  
- MVVM architecture  
- Async/Await  
- Xcode 15+  
- iOS 15.0+

## 📸 App Screenshots

| Explore | Detail View | Wishlists | Profile |
|:-------:|:-----------:|:---------:|:-------:|
| <img src="https://github.com/user-attachments/assets/65926085-6c3e-426b-8056-b98bfaaebede" alt="Explore" width="350" /> | <img src="https://github.com/user-attachments/assets/950bd61c-8b5a-4f65-9016-452dbf93e117" alt="Detail View" width="350" /> | <img src="https://github.com/user-attachments/assets/a316fdbe-2f17-4ddc-96fa-2c895a4d779e" alt="Wishlists" width="350" /> | <img src="https://github.com/user-attachments/assets/2b5bfe54-d737-4dc4-b375-b9bbe6176b01" alt="Profile" width="350" /> |

## 📋 General Info

**AirbnbCloneApp** is a visually polished concept app that replicates core features of Airbnb’s user experience:

- Property listing with images, city/state, and price  
- Location-based filtering with a custom search flow  
- Detail page with amenities, features, and map preview  
- Profile and wishlist screens with login prompts  
- Bottom tab navigation using `TabView`

⚠️ This is a **demo app only** – no real bookings or user data involved.

## 🚀 Features

- 🧭 Explore tab with listings and filters  
- 🖼️ Image carousel per property  
- 📍 Dynamic location search and filter  
- 🗺️ Map view showing property location  
- 🛏️ Detailed views with amenities and bedrooms  
- 👤 Profile view with login UI  
- ❤️ Wishlist screen (placeholder state for demo)

## 🧠 Learning Goals

This project was built to practice and demonstrate:

- SwiftUI layout and navigation patterns  
- Async data fetching & state updates  
- MapKit integration within SwiftUI  
- Modularizing and reusing UI components  
- Basic use of MVVM architecture  
- Designing responsive and scrollable layouts

## 🧪 Setup

To run the project locally:

1. Clone the repository  
   ```bash
   git clone https://github.com/gigagithere/AirbnbCloneApp.git
   ```
2. Open in Xcode  
3. Run on a device or iOS simulator (17.5+)

No backend or API key is required – data is mocked via `DeveloperPreview`.

## 📁 Project Structure Overview

```
AirbnbCloneApp/
├── App/                          # App entry point
│   └── AirbnbCloneApp.swift
│
├── Components/                   # Reusable UI components
│   ├── ListingImageCarouselView.swift
│   └── LoginButtonView.swift
│
├── Explore/                      # Explore view and search logic
│   ├── Service/
│   │   └── ExploreService.swift
│   ├── View/
│   │   ├── ExploreView.swift
│   │   ├── SearchAndFilterBar.swift
│   │   └── DestinationSearchView.swift
│   └── ViewModel/
│       └── ExploreViewModel.swift
│
├── Listings/                     # Listing views and model
│   ├── Model/
│   │   └── Listing.swift
│   └── View/
│       ├── ListingItemView.swift
│       └── ListingDetailView.swift
│
├── Profile/                      # Profile screen and options
│   ├── ProfileView.swift
│   └── ProfileOptionRowView.swift
│
├── TabBar/                       # Main tab view navigation
│   └── MainTabView.swift
│
├── Wishlists/                    # Wishlist screen
│   └── WishlistsView.swift
│
├── Extensions/                   # Utilities and preview data
│   ├── DeveloperPreview.swift
│   └── Regions.swift
│
├── Model/
│   └── ContentView.swift
│
├── Utils/                        # Shared helper logic (optional)
│   └── (empty or planned)
│
├── Assets.xcassets               # App assets and icons
├── Preview Content/              # SwiftUI previews
├── AirbnbCloneAppTests/          # Unit tests
└── AirbnbCloneAppUITests/        # UI tests
```


## ✅ What’s done well

- Clean MVVM setup with clear state handling  
- Smooth UI animations and transitions for search filters  
- Reusable components like `LoginButtonView`  
- Modular breakdown of views and models  
- Well-prepared mock data for instant preview  
- Good SwiftUI practices in layout, modifiers, and view composition

## 💡 Room for Improvement

- 🔐 Add real login/auth flow (e.g. Firebase Auth)  
- 📦 Connect to real backend (e.g. Firestore or custom API)  
- 🧾 Improve data validation & error messages  
- 📱 Add profile editing and photo picker  
- 💬 Localized error alerts/snackbars  
- 🌐 Multi-language support (optional)

## 📄 Status

Project is: **Working UI demo**

## ✉️ Contact

Created by **Bartosz Mrugała**  
Feel free to reach out on GitHub: [@gigagithere](https://github.com/gigagithere)

## 📝 License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT)
