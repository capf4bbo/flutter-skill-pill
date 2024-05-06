# Exercises

## Navigation and Routing​

### Exercise 1: Create a Product Page

1. **Description:** Create a StatelessWidget Page named `ProductPage` that shows data related to a product: title, price, description, image and rating.

2. **Hints:**
   - Use the `ProductPage` widget to display product data.

### Exercise 2: Create a GoRouter instance

1. **Objective:** Understand how a GoRouter works and how to define routes.

2. **Description:** Create inside `router.dart` file a `GoRouter` instance with home and new page routes. Change `StoreApp` to work with `GoRouter`.

3. **Hints:**
   - Use the `GoRouter` class.
   - Use `MaterialApp.router`.

### Exercise 3: Create a push route to Product Page

1. **Objective:** Integrate the use of StatelessWidget and StatefulWidget in a simple application.

2. **Description:** Add the necessary code to the `ProductListTile` to push `ProductPage` and a button to pop `ProductPage`.

3. **Hints:**
   - Use router push and pop methods.

## Web and Database Services Connection

### Exercise 1: Get products data from an API

1. **Description:** Replace the call of `addProduct` with an http call to fakestoreapi. Check [here](https://fakestoreapi.com/) the docs.

2. **Hints:**
   - Use the `http` package with http calls (https required to add the certificate).
   - Use jsonDecode to deserialize the data.

### Exercise 2: Store settings locally

1. **Description:** `SettingsPage` contains some examples of fake data. Store it in the davice.

2. **Hints:**
   - Use the `SharedPreferences` package to store the data.
   - Check future builder to manage builds that depends on async operations.

## Environment variables

### Exercise 1: Use environment variables from file

1. **Description:** Pass the baseUrl variable from the environment file .env.

2. **Hints:**
   - Avoid any kind of package, flutter has a built-in feature.

### Exercise 2: Automate vscode to load different .env based on environment (dev, prod...)

1. **Description:** Automate the debug and launch plugin to load differents .env.

2. **Hints:**
   - Check `launch.json` from `.vscode` folder.

