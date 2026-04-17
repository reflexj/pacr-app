class AppConstants {
  AppConstants._();

  static const double defaultSearchRadiusKm  = 5.0;
  static const double expandedSearchRadiusKm = 10.0;
  static const int    sessionWindowDays       = 7;
  static const int    chatLockMinutesAfterEnd = 60;

  static const List<SportOption> sports = [
    SportOption(id: 'running',       label: 'Running'),
    SportOption(id: 'cycling',       label: 'Cycling'),
    SportOption(id: 'yoga',          label: 'Yoga'),
    SportOption(id: 'football',      label: 'Football'),
    SportOption(id: 'basketball',    label: 'Basketball'),
    SportOption(id: 'tennis',        label: 'Tennis'),
    SportOption(id: 'volleyball',    label: 'Volleyball'),
    SportOption(id: 'swimming',      label: 'Swimming'),
    SportOption(id: 'hiking',        label: 'Hiking'),
    SportOption(id: 'crossfit',      label: 'Crossfit'),
    SportOption(id: 'padel',         label: 'Padel'),
    SportOption(id: 'badminton',     label: 'Badminton'),
    SportOption(id: 'rugby',         label: 'Rugby'),
    SportOption(id: 'climbing',      label: 'Climbing'),
    SportOption(id: 'rowing',        label: 'Rowing'),
    SportOption(id: 'skateboarding', label: 'Skateboarding'),
    SportOption(id: 'other',         label: 'Other'),
  ];
}

class SportOption {
  final String id;
  final String label;
  const SportOption({required this.id, required this.label});
}
