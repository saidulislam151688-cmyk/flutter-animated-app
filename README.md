# Flutter App with Animations

A Flutter app demonstrating smooth animations using flutter_animate.

## Setup

1. Install Flutter SDK
2. Run `flutter pub get`
3. Run `flutter run`

## GitHub Actions APK Build

This project includes GitHub Actions workflow that automatically builds debug APK on push.

### To use:
1. Push this code to a GitHub repository
2. Go to Actions tab
3. Download the built APK from artifacts

## Animations Used

- `animate()` - Creates animation
- `.fadeIn()` - Fade in effect
- `.slideX()` - Slide from left/right
- `.shimmer()` - Shimmer effect
- `.shake()` - Shake animation
- `.moveY()` - Vertical movement
- `.scale()` - Scale animation

## Packages

- `flutter_animate` - Easy animations
- `lottie` - Vector animations

## Build APK

```bash
flutter build apk --debug
# or
flutter build apk --release
```
