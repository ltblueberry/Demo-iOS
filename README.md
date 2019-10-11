# Demo-iOS

Demo project with simple iOS app.
I wanted to show my code style, patterns, networking, local DB, interface and etc in some simple example.

This simple application consists of:
* **LaunchModule** - "fake"-launch screen module. In case if you want to add some animations to LaunchScreen; 
* **RootModule** - Root tabbar module;
* **NetworkingModule** - module with Networking example;
* **RealmSwiftModule** - module with RealmSwift example;

I've used **MVP** pattern, **Moya** as networking layer, **Realm** as local database.
I've made some interfaces programmatically (**NetworkingViewController**, **DetailViewController**, **CodeCell**) and some via storyboard and xib (**RealmViewController.storyboard**, **XibCell.xib**).

# Pods
I've used next pods:
* **SwiftLint** & **SwiftFormat** - for code style;
* **R.swift** - for comfortable work with resources;
* **Moya** - network layer;
* **SVProgressHUD** - loader indicator;
* **RealmSwift** - local database.
 