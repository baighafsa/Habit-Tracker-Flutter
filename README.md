# Habit-Tracker-Flutter  🏃📔⏳


**Introduction:**
The Habit Tracker App is a mobile application built using the Flutter framework. It allows users to track and manage their daily habits, providing features such as habit tracking, progress visualization, and habit-specific settings. The app is designed to help users build consistency in their routines and monitor their progress towards achieving their goals.

**Functionality:**
1. **Home Page:** The app's main screen displays a list of habits that users want to track. Each habit tile includes the habit name, a circular progress indicator, the time spent on the habit, the goal time, and the percentage completed.
2. **Tracking Habits:** Users can start and pause tracking habits by tapping the play/pause icon on each habit tile. The timer automatically records the elapsed time.
3. **Setting Options:** Users can access habit-specific settings by tapping the settings icon. Although the settings page is not fully implemented, the groundwork is set for future customization.
4. **Visual Representation:** Circular progress indicators visually represent the user's progress for each habit. The color changes based on completion percentage, and real-time updates occur as the timer runs.

**Architecture and Code Structure:**
1. **main.dart:** The main entry point of the app initializes the Flutter app and sets up the MaterialApp with the HomePage as the initial screen.
2. **home_page.dart:** This file contains the HomePage class, which is a StatefulWidget responsible for displaying the list of habit tiles. Habit tracking and settings are managed here.
3. **habit_tile.dart:** The HabitTile class defines the UI for each habit tile. It includes methods for converting time to a human-readable format and calculating completion percentages.

**Key Features and Contributions:**
- Implemented a dynamic interface for tracking multiple habits with real-time updates.
- Utilized the `percent_indicator` package to create circular progress indicators.
- Established a timer using `Timer.periodic()` to record time spent on each habit.
- Designed the architecture to facilitate easy addition of new habits and features.

**Future Enhancements:**
1. Implement the habit-specific settings page to allow users to customize their tracking preferences.
2. Incorporate data persistence to retain habit information across app sessions.
3. Provide data visualization and historical tracking of habit progress.
4. Enhance the user interface with themes and additional customization options.

**Conclusion:**
The Habit Tracker App in Flutter is a promising project that lays the foundation for an effective habit-tracking tool. With its current features and well-structured codebase, the app has the potential to help users build and maintain positive habits while offering opportunities for future expansion and improvement.
