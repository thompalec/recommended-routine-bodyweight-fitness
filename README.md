# Overcoming Gravity - Bodyweight Fitness Recommended Routine

A Flutter mobile application for tracking and following the bodyweight fitness recommended routine from "Overcoming Gravity".

## Features

- **Home Screen**: Start workouts or view history
- **Workout Tracking**:
  - Follow the complete recommended routine with warmup, strength pairs, and core triplet
  - Adjustable difficulty levels for each exercise
  - Rep/time tracking for each exercise
  - Rest timers between exercises (90s for strength, 60s for core)
  - Navigate forward/backward through exercises
  - Complete workout tracking with timestamps
- **History**: View past workouts with detailed exercise information
- **Data Persistence**: Workouts saved locally as JSON files
- **Progressive Overload**: Each workout uses previous workout's difficulty and reps as defaults

## Workout Structure

### Warmup (5-10 min)
- Yuri's Shoulder Band Warmup
- Squat Sky Reaches
- GMB Wrist Prep
- Deadbugs
- Arch Hangs
- Support Hold
- Easier Squat/Hinge Progressions

### Strength Work (40-60 min)
**First Pair** (3x5-8 each with 90s rest):
- Pull-up Progression
- Squat Progression

**Second Pair** (3x5-8 each with 90s rest):
- Dip Progression
- Hinge Progression

**Third Pair** (3x5-8 each with 90s rest):
- Row Progression
- Push-up Progression

### Core Triplet (3x8-12 each with 60s rest)
- Anti-Extension Progression
- Anti-Rotation Progression
- Extension Progression

## Getting Started

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart SDK
- iOS development tools (for iOS)
- Android SDK (for Android)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd recommended-routine-bodyweight-fitness
```

2. Install dependencies:
```bash
flutter pub get
```

3. Add exercise GIF files to the appropriate directories:
   - `assets/gifs/warmup/`
   - `assets/gifs/strength/`
   - `assets/gifs/core/`

4. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── models/              # Data models (Exercise, Workout, ExerciseSet, etc.)
├── data/                # Static workout data and storage
│   └── storage/         # Local file storage services
├── screens/             # Full-screen pages
│   ├── home/            # Home screen
│   ├── workout/         # Workout and exercise screens
│   └── history/         # History screens
├── widgets/             # Reusable UI components
│   ├── home/
│   ├── workout/
│   └── history/
├── providers/           # State management (Provider pattern)
├── services/            # Business logic services
├── utils/               # Utility functions and constants
├── theme/               # App theming
├── main.dart            # App entry point
└── app.dart             # App configuration

assets/
├── gifs/                # Exercise demonstration GIFs
│   ├── warmup/
│   ├── strength/
│   └── core/
└── images/              # Other images
```

## Dependencies

- **provider**: State management
- **path_provider**: Local file system access
- **shared_preferences**: Key-value storage for preferences
- **intl**: Date and time formatting

## Adding Exercise GIFs

Exercise GIFs should be placed in the following directories with specific naming conventions:

### Warmup Exercises
- `assets/gifs/warmup/shoulder_band_warmup.gif`
- `assets/gifs/warmup/squat_sky_reaches.gif`
- `assets/gifs/warmup/wrist_prep.gif`
- `assets/gifs/warmup/deadbugs.gif`
- `assets/gifs/warmup/arch_hangs.gif`
- `assets/gifs/warmup/support_hold.gif`
- `assets/gifs/warmup/easier_squat.gif`
- `assets/gifs/warmup/easier_hinge.gif`

### Strength Exercises (by progression level)
Each exercise has multiple levels (0-4 typically):
- `assets/gifs/strength/pullup_0.gif` through `pullup_4.gif`
- `assets/gifs/strength/squat_0.gif` through `squat_6.gif`
- `assets/gifs/strength/dip_0.gif` through `dip_4.gif`
- `assets/gifs/strength/hinge_0.gif` through `hinge_4.gif`
- `assets/gifs/strength/row_0.gif` through `row_4.gif`
- `assets/gifs/strength/pushup_0.gif` through `pushup_4.gif`

### Core Exercises (by progression level)
- `assets/gifs/core/anti_extension_0.gif` through `anti_extension_2.gif`
- `assets/gifs/core/anti_rotation_0.gif` through `anti_rotation_1.gif`
- `assets/gifs/core/extension_0.gif` through `extension_1.gif`

## Data Storage

- **Workout History**: Stored in `workout_history.json` in app documents directory
- **Preferences**: Stored using SharedPreferences (last used difficulty levels and reps)

## Building for Release

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

## Customization

### Changing Rest Durations
Edit the values in `lib/data/workout_data.dart`:
- Strength exercises: `restAfter: 90` (90 seconds)
- Core exercises: `restAfter: 60` (60 seconds)

### Modifying Exercise Progressions
Edit `lib/data/exercise_progressions.dart` to add, remove, or modify progression levels.

### Changing Default Values
Edit `lib/data/workout_data.dart` to change default reps/time for each exercise.

## Known Issues

- GIF files need to be added manually (not included in repository)
- App currently supports light mode only (dark mode theme exists but not selectable)

## Future Enhancements

- [ ] Settings screen for customizing rest durations
- [ ] Dark mode toggle
- [ ] Workout statistics and progress tracking
- [ ] Export workout history
- [ ] Custom workout builder
- [ ] Sound/vibration notifications for rest timer completion
- [ ] Video tutorials instead of GIFs

## License

This project is for personal use. Exercise progressions are based on the "Overcoming Gravity" book by Steven Low.

## Credits

- Exercise routine based on "Overcoming Gravity" by Steven Low
- Built with Flutter
