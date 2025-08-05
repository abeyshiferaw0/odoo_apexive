/// Utility class for formatting data.
class FormatUtils {
  /// Formats the given [totalSeconds] into a string representation of MM:SS.
  ///
  /// For example, 70 seconds would be formatted as "01:10".
  String formatSecondsToMMSS(int totalSeconds) {
    final minutes = totalSeconds ~/ 60;
    final seconds = totalSeconds % 60;

    final minutesStr = minutes.toString().padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');

    return '$minutesStr:$secondsStr';
  }

  /// Formats the given [totalSeconds] into a string representation of HH:MM:SS.
  ///
  /// For example, 3661 seconds would be formatted as "01:01:01".
  String formatSecondsToHMS(int totalSeconds) {
    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    final seconds = totalSeconds % 60;

    final hoursStr = hours.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');

    return '$hoursStr:$minutesStr:$secondsStr';
  }
}
