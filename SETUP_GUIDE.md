# Setup Guide - City Brain Flutter App

## Directory Structure Setup

Create the following directories in your project root:

```
project_root/
├── lib/
├── assets/
│   ├── images/          # PNG, JPG images
│   ├── icons/           # SVG icons
│   ├── animations/      # Lottie JSON files
│   └── fonts/           # Custom fonts (TTF)
├── android/
├── ios/
├── web/
└── pubspec.yaml
```

## Step 1: Create Directories

```bash
mkdir -p assets/images
mkdir -p assets/icons
mkdir -p assets/animations
mkdir -p assets/fonts
```

## Step 2: Download Font Files (Optional)

Download these fonts and place in `assets/fonts/`:
- Poppins-Regular.ttf
- Poppins-Bold.ttf
- Poppins-SemiBold.ttf

From: https://fonts.google.com/specimen/Poppins

## Step 3: Add Images and Icons (Optional)

Place your PNG/JPG/SVG files in respective directories.

## Step 4: Uncomment Assets in pubspec.yaml

When ready, uncomment the assets section:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/images/
    - assets/icons/
    - assets/animations/
  fonts:
    - family: Poppins
      fonts:
        - asset: assets/fonts/Poppins-Regular.ttf
        - asset: assets/fonts/Poppins-Bold.ttf
          weight: 700
```

## Step 5: Run the App

```bash
# Clean and rebuild
flutter clean
flutter pub get
flutter run
```

## Current App Features (No Assets Required)

✅ Professional color scheme (Blue, Green, Purple)
✅ Material Design 3 theme
✅ Responsive layouts (Mobile/Tablet/Desktop)
✅ 6 Department cards with built-in icons
✅ 5 Zone performance cards with gradients
✅ Priority alerts with severity indicators
✅ City Health Index visualization
✅ Authentication screens
✅ Dashboard with tab navigation

The app runs perfectly WITHOUT custom assets using Flutter's built-in Material icons!
