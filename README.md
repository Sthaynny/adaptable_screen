<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

<p align="center">
   <img src="https://user-images.githubusercontent.com/46109133/148128997-48ee1d39-8488-4227-83d9-6d80f7034a1b.png" alt="adaptable" width="200"/>
</p>

<p align="center">
  <img alt="Languages" src="https://img.shields.io/github/languages/count/Sthaynny/adaptable_screen?color=%235963C5" />
  <img alt="lastcommit" src="https://img.shields.io/github/last-commit/Sthaynny/adaptable_screen?color=%235761C3" />
  <img alt="License" src="https://img.shields.io/github/license/Sthaynny/adaptable_screen?color=%235E69D7" />
  <img alt="Issues" src="https://img.shields.io/github/issues/Sthaynny/adaptable_screen?color=%235965E0">

  </a>
</p>

<p>
  
This package was created to reduce the need to create a way to leave the exact sizes up to the designer. For that, the Plugin scales the sizes based on an interface size and the windows that the components are being inserted.
  
</p>

## Getting started

Depend on it

Add this to your package's pubspec.yaml file:


```
  dependencies:
       adaptable_screen: ^0.0.3
```


Install it
You can install packages from the command line:

with Flutter:

```
  $ flutter pub get
```

## Usage

To set the widths and heights based on the build size of your design, use the `AdaptableScreenUtils.init()` function to set the sizes. Essa função deve ser utilizada ao iniciar a construção do seu aplicativo.

```dart
void main() {
  AdaptableScreenUtils.init();
  runApp(const MyApp());
}
```

Use `.h` to scale the height based on the window size:

```dart
Container(
  height: 10.h
)
```

Use `.w` to scale the width based on the window size:

```dart
Container(
  width: 10.w
)
```

Use `.ssp` to scale text based on window size, this function can change font size as window changes size:

```dart
Text(
  "Text Exemplo",
  style: TextStyle(fontSize: 15.ssp),
)
```

Use `.sp` to scale text based on window size:

```dart
Text(
  "Text Exemplo",
  style: TextStyle(fontSize: 15.ssp),
)
```



Use `.r` to scale radius based on minimum window size:

```dart
Container(
  decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(10.r),
  ),
  height: 50.h,
  width: 100.w,
  child: Center(
    child: Text(
      "Text Exemplo",
      style: TextStyle(fontSize: 15.sp),
    ),
  ),
)
```

If you want to see a usage in a simple way, go to `/example` folder.
## Additional information

For contributes:

- Fork this repository;
- Create a new branch to develop your feature: `git checkout -b my-feature`;
- Commit your changes: `git commit -m 'feat: my new feature'`;
- Push to your branch: `git push origin my-feature`.
- Open a pull request for your code to be evaluated.

To help maintain the chosen pattern we also create a file which is called before every commit. This file will format and pinpoint (if present) errors in the codestyle of your code. To enable this you must first copy it to git's hooks folder. If you are developing on macOS, go to the root of the project and run the command below:

```
cp pre-commit .git/hooks/pre-commit
```

After this step, it is necessary to give permission for the file to be executed. Just follow the following command:

```
chmod +x .git/hooks/pre-commit
```
