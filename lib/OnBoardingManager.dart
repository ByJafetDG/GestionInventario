import 'package:shared_preferences/shared_preferences.dart';

class OnboardingManager {
  static const String hasSeenOnboardingKey = 'hasSeenOnboarding';

  static Future<bool> hasSeenOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(hasSeenOnboardingKey) ?? false;
  }

  static Future<void> setHasSeenOnboarding(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(hasSeenOnboardingKey, value);
  }
}
