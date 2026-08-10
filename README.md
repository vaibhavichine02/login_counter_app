#BLoC Assignments — Counter & Login

Two Flutter assignments implemented with `flutter_bloc`.

## Structure

```
lib/
├── main.dart                    # entry point, picker screen for both demos
├── counter_feature/
│   ├── bloc/
│   │   ├── counter_bloc.dart
│   │   ├── counter_event.dart
│   │   └── counter_state.dart
│   └── ui/
│       └── counter_screen.dart
└── login_feature/
    ├── bloc/
    │   ├── login_bloc.dart
    │   ├── login_event.dart
    │   └── login_state.dart
    └── ui/
        └── login_screen.dart
```

## Setup

This repo ships only the `lib/` source files and `pubspec.yaml` — it is not
a full scaffolded Flutter project (no `android/`, `ios/`, etc.), since those
platform folders are large, machine-generated, and normally excluded from
version control anyway.

To run it:

```bash
flutter create bloc_assignments_run
cd bloc_assignments_run
# replace the generated lib/ and pubspec.yaml with the ones from this repo
flutter pub get
flutter run
```

Or, if you already have a Flutter project scaffolded, just copy the `lib/`
folder and merge the `flutter_bloc` dependency from `pubspec.yaml` into
your existing one.

## Assignment 1 — Counter BLoC
- Events: `IncrementEvent`, `DecrementEvent`, `ResetEvent`
- Counter floors at 0 (cannot go negative)
- Bonus: capped at 10, increment button disabled at max, "Maximum limit
  reached" message shown
- SnackBar shown on reset

## Assignment 2 — Login BLoC
- States: `initial`, `loading`, `success`, `error` (via `LoginStatus` enum)
- Empty email/password → error state
- Bonus validation: email must contain `@`, password must be 6+ characters
- Simulated network delay shows a loading spinner on the button
- SnackBar shown on both success and error

## Submission

```bash
git init
git add .
git commit -m "Counter and Login BLoC assignments"
git branch -M main
git remote add origin <your-empty-github-repo-url>
git push -u origin main
```

Share the resulting GitHub repo link with your instructor.
# login_counter_app
flutter login and counter app using bloc state management
