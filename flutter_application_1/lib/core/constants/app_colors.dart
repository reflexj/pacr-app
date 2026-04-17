import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.background,
    required this.card,
    required this.surface,
    required this.primaryText,
    required this.secondaryText,
    required this.muted,
    required this.primaryCta,
    required this.accent,
    required this.live,
    required this.success,
    required this.warning,
    required this.error,
    required this.divider,
    required this.border,
  });

  final Color background;
  final Color card;
  final Color surface;
  final Color primaryText;
  final Color secondaryText;
  final Color muted;
  final Color primaryCta;
  final Color accent;
  final Color live;
  final Color success;
  final Color warning;
  final Color error;
  final Color divider;
  final Color border;

  static const light = AppColors(
    background:    Color(0xFFF7F9FC),
    card:          Color(0xFFFFFFFF),
    surface:       Color(0xFFEEF2F7),
    primaryText:   Color(0xFF0F172A),
    secondaryText: Color(0xFF475569),
    muted:         Color(0xFF94A3B8),
    primaryCta:    Color(0xFF00BFA6),
    accent:        Color(0xFF2563EB),
    live:          Color(0xFF16A34A),
    success:       Color(0xFF16A34A),
    warning:       Color(0xFFD97706),
    error:         Color(0xFFDC2626),
    divider:       Color(0xFFE2E8F0),
    border:        Color(0xFFCBD5E1),
  );

  static const dark = AppColors(
    background:    Color(0xFF0F172A),
    card:          Color(0xFF1E293B),
    surface:       Color(0xFF1E293B),
    primaryText:   Color(0xFFF8FAFC),
    secondaryText: Color(0xFF94A3B8),
    muted:         Color(0xFF475569),
    primaryCta:    Color(0xFF00BFA6),
    accent:        Color(0xFF3B82F6),
    live:          Color(0xFF22C55E),
    success:       Color(0xFF22C55E),
    warning:       Color(0xFFFBBF24),
    error:         Color(0xFFEF4444),
    divider:       Color(0xFF334155),
    border:        Color(0xFF334155),
  );

  @override
  AppColors copyWith({
    Color? background, Color? card,          Color? surface,
    Color? primaryText, Color? secondaryText, Color? muted,
    Color? primaryCta,  Color? accent,        Color? live,
    Color? success,     Color? warning,       Color? error,
    Color? divider,     Color? border,
  }) => AppColors(
    background:    background    ?? this.background,
    card:          card          ?? this.card,
    surface:       surface       ?? this.surface,
    primaryText:   primaryText   ?? this.primaryText,
    secondaryText: secondaryText ?? this.secondaryText,
    muted:         muted         ?? this.muted,
    primaryCta:    primaryCta    ?? this.primaryCta,
    accent:        accent        ?? this.accent,
    live:          live          ?? this.live,
    success:       success       ?? this.success,
    warning:       warning       ?? this.warning,
    error:         error         ?? this.error,
    divider:       divider       ?? this.divider,
    border:        border        ?? this.border,
  );

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      background:    Color.lerp(background,    other.background,    t)!,
      card:          Color.lerp(card,          other.card,          t)!,
      surface:       Color.lerp(surface,       other.surface,       t)!,
      primaryText:   Color.lerp(primaryText,   other.primaryText,   t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      muted:         Color.lerp(muted,         other.muted,         t)!,
      primaryCta:    Color.lerp(primaryCta,    other.primaryCta,    t)!,
      accent:        Color.lerp(accent,        other.accent,        t)!,
      live:          Color.lerp(live,          other.live,          t)!,
      success:       Color.lerp(success,       other.success,       t)!,
      warning:       Color.lerp(warning,       other.warning,       t)!,
      error:         Color.lerp(error,         other.error,         t)!,
      divider:       Color.lerp(divider,       other.divider,       t)!,
      border:        Color.lerp(border,        other.border,        t)!,
    );
  }
}

extension AppColorsX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
