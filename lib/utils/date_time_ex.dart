extension DateTimeEx on DateTime {
  String get remainingTime {
    final difference = this.difference(DateTime.now());
    final days = difference.inDays;
    final hours = difference.inHours;
    final minutes = difference.inMinutes;
    final seconds = difference.inSeconds;
    if (days > 0) {
      if (days == 1) {
        return '1 day';
      }
      return '$days days';
    } else if (hours > 0) {
      if (hours == 1) {
        return 'an hour';
      }
      return '$hours hours';
    } else if (minutes > 0) {
      if (minutes == 1) {
        return 'a minute';
      }
      return '$minutes minutes';
    } else if (seconds > 0) {
      return '$seconds seconds';
    } else {
      return '0 seconds';
    }
  }

  String get toTimeAgo {
    final difference = DateTime.now().difference(this);
    final days = difference.inDays;
    final hours = difference.inHours;
    final minutes = difference.inMinutes;
    final seconds = difference.inSeconds;
    if (days > 0) {
      if (days == 1) {
        return '1 day ago';
      }
      return '$days days ago';
    } else if (hours > 0) {
      if (hours == 1) {
        return 'an hour ago';
      }
      return '$hours hours ago';
    } else if (minutes > 0) {
      if (minutes == 1) {
        return 'a minute ago';
      }
      return '$minutes minutes ago';
    } else if (seconds > 0) {
      return '$seconds seconds ago';
    } else {
      return '0 seconds ago';
    }
  }

  bool get inThePast => isBefore(DateTime.now());

  sameDayAs(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}
