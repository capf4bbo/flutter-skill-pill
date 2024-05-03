# Exercises

## Stateless and Statefull Widgets

### Exercise 1: Create a Basic StatelessWidget

1. **Objective:** Get familiar with creating and using a StatelessWidget.

2. **Description:** Create a StatelessWidget named `ProductListTile` that shows within a card the different fields of a product: title, price, description, image and rating. Then, use this widget in the `build` function of main class (`StoreApp`) by wrapping it in a List View.

3. **Hints:**
   - Use the `ProductListTile` widget to display product data.
   - Ensure that your main class (`StoreApp`) utilizes `ProductListTile` in its `build` function.

### Exercise 2: Create a StatefulWidget

1. **Objective:** Understand how a StatefulWidget works and how to update state.

2. **Description:** Create a StatefulWidget named `AddPrductButton` that is a button with an icon. Upon clicking the button, the icon should be replaced with a circular progress indicator during one second.

3. **Hints:**
   - Use the `State` class along with `StatefulWidget`.
   - Implement a method in the `State` class to handle the icon replacement.
   - Update the Icon with a Circular Progress Indicator.

### Exercise 3: Combine StatefulWidget and StatelessWidget

1. **Objective:** Integrate the use of StatelessWidget and StatefulWidget in a simple application.

2. **Description:** Add the necessary code to the button to add a new product with random values ​​after the waiting second has completed.

3. **Hints:**
   - Ensure that the `AddPrductButton` has access to the list of `ProductListTile` to dynamically add new content.
