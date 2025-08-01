# Design Explorations – iOS 26

This project is a **code-along tutorial** introducing the new **liquid glass design** and **enhanced tab behaviors** in iOS 26 using SwiftUI.  

It showcases:

- A **TabView** with multiple tabs and a dedicated **search tab**
- A **searchable list** with real-time filtering
- New **liquid glass effects** with `GlassEffectContainer` and `glassEffectUnion`
- A simple **Mini Player** that sits above the tab bar
- Modern toolbar and tab bar behaviors like auto-minimizing and accessory views

![DesignExploration](DesignExplorationVideo.mp4)

---

## 🚀 Features

- ✅ **Liquid Glass Design** – Add stunning liqud-glass UI elements using `.glassEffect()` and `GlassEffectContainer`.
- ✅ **Search Tab** – Easily integrate a search bar using `.searchable(text:)` and `role: .search`.
- ✅ **Mini Player** – Create a floating music player above the tab bar using `.tabViewBottomAccessory`.
- ✅ **Modern Toolbar Behavior** – Minimize the search bar and hide the tab bar while scrolling.
- ✅ **Smooth Transitions** – Use `@State`, `withAnimation`, and `.glassEffectID()` to create fluid toggle effects.

---

## 📦 Requirements

- **Xcode 26 beta 4** (or newer)  
- iOS 18 / iOS 26 SDK  

Download Xcode 26 beta here:  
👉 [Xcode 26 beta 4](https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_26_beta_4/Xcode_26_beta_4.xip)

---

## 🛠 How to Use

1. Clone or download this project.
2. Open it in **Xcode 26 beta 4**.
3. Build and run on an iOS 18 simulator or device.
4. Explore the different tabs:
   - Try searching in the **Search** tab.
   - Play with the **liquid glass elements** in **HomeView**.
   - Use the **toggle effect** in **ProfileView**.
   - Scroll in **ListView** to see the **tab bar and search bar auto-hide**.

---

## 📚 What You Will Learn

In this code-along, you’ve learned how to:

- Create a tab view with multiple tabs, including a dedicated search tab using `role: .search` and featuring the new liquid glass design.
- Build a searchable list with real-time filtering using `.searchable(text:)`.
- Use the new liquid glass design in iOS 26 with `.glassEffect()`, `GlassEffectContainer`, and `.glassEffectUnion()` to group elements together. 
- Apply matched glass effects with `.glassEffectID()` to create smooth transitions when toggling elements.    
- Enhance navigation with the new iOS 26 modifiers:
    - `.searchToolbarBehavior(.minimize)` to collapse the search bar on scroll.
    - `.tabBarMinimizeBehavior(.onScrollDown)` to hide the tab bar while scrolling.
    - `.tabViewBottomAccessory` to attach a custom view above the tab bar.

---

## 🎉 Result

By the end of this tutorial, you will have a **fully functional SwiftUI app** that demonstrates the **new design features of iOS 26**, combining modern UI, smooth animations, and advanced tab behaviors.
