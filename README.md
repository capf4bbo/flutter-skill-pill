# Flutter Skill Pill

This repository contains basic Flutter exercises to practice core concepts.

## Environment Setup

Before starting with the exercises, ensure you have Flutter 3.16 set up on your machine. Below are the steps to configure Flutter for Web and Android.

### [Flutter for Web](https://docs.flutter.dev/get-started/install/windows/web)

1. **Development tools**
    - Download and install [Git](https://gitforwindows.org/) to manage source code and [Google Chrome](https://www.google.com/chrome/dr/download/) to debug JavaScript code for web apps.

2. **Flutter Installation:**
   - Download [Flutter SDK](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.19.6-stable.zip) package, extract it and add ```flutter/bin``` directory to ```PATH```.

3. **Validate flutter installation:**
   - To verify your installation of all the components, run the following command:

     ```bash
     flutter doctor -v
     ```

     Make sure Flutter and Chrome has green checks.

### [Flutter for Android](https://docs.flutter.dev/get-started/install/windows/mobile)

1. **Development tools**
    - Download and install [Git](https://gitforwindows.org/) to manage source code and [Android Studio](https://developer.android.com/studio/install) to debug and compile Java or Kotlin code for Android.

2. **Flutter Installation:**
   - Download [Flutter SDK](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.19.6-stable.zip) package, extract it and add ```flutter/bin``` directory to ```PATH```.

3. **Accep Android SDK Licences:**
   - Agree to the licenses of the Android SDK platform:

     ```bash
     flutter doctor --android-licenses
     ```

4. **Validate flutter installation:**
   - To verify your installation of all the components, run the following command:

     ```bash
     flutter doctor -v
     ```

     Make sure Flutter, Android Toolchain and Android Studio has green checks.

## VS Code

You can build apps with Flutter using any text editor or integrated development environment (IDE) combined with Flutter’s command-line tools, that's why we highly recommend Visual Studio Code.

Using it with with the following extensions provides code completion, syntax highlighting, widget editing assists, debugging, and other features:

- **Flutter**, ID: Dart-Code.flutter
- **Flutter Widget Snippets**, ID: gornivv.vscode-flutter-files
- **Flutter Tree**, ID: marcelovelasquez.flutter-tree
- **Awesome Flutter Snippets**, ID: Nash.awesome-flutter-snippets
- **Flutter Color**, ID: circlecodesolution.ccs-flutter-color
- **Material Icon Theme**, ID: PKief.material-icon-theme

## FVM Install

This repository uses an specific version of Flutter (3.16). In order to ensure compatibility and consistency across exercises fvm tool will be used to setup an specific flutter version.

To install it follow [FVM install website](https://fvm.app/documentation/getting-started/installation).

### FVM Setup

Activate fvm plugin

~~~
dart pub global activate fvm
~~~

Download flutter sdk

~~~
fvm use 3.16.3
~~~
