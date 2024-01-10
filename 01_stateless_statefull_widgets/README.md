# Stateless and Statefull Widgets

## Exercise 1: Create a Basic StatelessWidget

1. **Objective:** Get familiar with creating and using a StatelessWidget.

2. **Description:** Create a StatelessWidget named `MyTextWidget` that simply displays a static Text like "Hello, Flutter". Then, use this widget in the `build` function of your main class (`MyApp`).

3. **Hints:**
   - Use the `Text` widget to display the text.
   - Ensure that your main class (`MyApp`) utilizes `MyTextWidget` in its `build` function.

## Exercise 2: Create a StatefulWidget with a Counter

1. **Objective:** Understand how a StatefulWidget works and how to update state.

2. **Description:** Create a StatefulWidget named `CounterWidget` that has a button and a Text. Upon clicking the button, the Text should display the number of times the button has been pressed.

3. **Hints:**
   - Use the `State` class along with `StatefulWidget`.
   - Implement a method in the `State` class to handle the counter increment.
   - Update the Text with the counter value.

## Exercise 3: Combine StatefulWidget and StatelessWidget

1. **Objective:** Integrate the use of StatelessWidget and StatefulWidget in a simple application.

2. **Description:** Create an application that has a StatelessWidget named `Header` displaying a static header (e.g., the application name). Then, add a StatefulWidget named `Content` with a button. Clicking the button should dynamically change the content of the header (e.g., display a different greeting).

3. **Hints:**
   - Use the `Header` in your main class (`MyApp`) as part of the interface.
   - Ensure that the `Content` has access to the `Header` to dynamically update its content.
