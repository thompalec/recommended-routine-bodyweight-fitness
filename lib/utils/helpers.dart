import 'package:intl/intl.dart';

class Helpers {
  // Format duration to human-readable string
  static String formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    if (hours > 0) {
      return '$hours hr $minutes min';
    } else if (minutes > 0) {
      return '$minutes min $seconds sec';
    } else {
      return '$seconds sec';
    }
  }

  // Format date
  static String formatDate(DateTime date, {String format = 'MMM d, y'}) {
    return DateFormat(format).format(date);
  }

  // Format time
  static String formatTime(DateTime time, {String format = 'h:mm a'}) {
    return DateFormat(format).format(time);
  }

  // Format date and time
  static String formatDateTime(DateTime dateTime) {
    return '${formatDate(dateTime)} at ${formatTime(dateTime)}';
  }

  // Convert seconds to minutes and seconds display
  static String formatSeconds(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  // Calculate percentage
  static double calculatePercentage(int value, int total) {
    if (total == 0) return 0.0;
    return (value / total) * 100;
  }

  // Clamp value between min and max
  static int clamp(int value, int min, int max) {
    if (value < min) return min;
    if (value > max) return max;
    return value;
  }
}
