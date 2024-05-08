# Exercises

## Web and Database Services Connection

### Exercise 1: Get products data from an API

1. **Description:** Replace the call of `addProduct` in `home_page` with an http call to fakestoreapi. Check [here](https://fakestoreapi.com/) the docs.

2. **Hints:**
   - Use the `http` package with http calls (https required to add the certificate).
   - Use jsonDecode to deserialize the data.

### Exercise 2: Store settings locally

1. **Description:** `SettingsPage` contains some examples of fake data. Store and load the data when accessing this page.

2. **Hints:**
   - Use the `SharedPreferences` package to store the data.
   - Check future builder to manage builds that depends on async operations.