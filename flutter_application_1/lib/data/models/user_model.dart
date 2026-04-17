import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String email;
  final String displayName;
  final bool isHost;
  final String? fcmToken;
  final GeoPoint? lastKnownLocation;
  final DateTime createdAt;

  const UserModel({
    required this.id,
    required this.email,
    required this.displayName,
    required this.isHost,
    required this.createdAt,
    this.fcmToken,
    this.lastKnownLocation,
  });

  factory UserModel.fromMap(Map<String, dynamic> map, String id) => UserModel(
        id: id,
        email: map['email'] as String,
        displayName: map['displayName'] as String,
        isHost: (map['isHost'] as bool?) ?? false,
        fcmToken: map['fcmToken'] as String?,
        lastKnownLocation: map['lastKnownLocation'] as GeoPoint?,
        createdAt:
            (map['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      );

  Map<String, dynamic> toMap() => {
        'email': email,
        'displayName': displayName,
        'isHost': isHost,
        'fcmToken': fcmToken,
        'lastKnownLocation': lastKnownLocation,
        'createdAt': FieldValue.serverTimestamp(),
      };

  UserModel copyWith({
    String? displayName,
    bool? isHost,
    String? fcmToken,
    GeoPoint? lastKnownLocation,
  }) =>
      UserModel(
        id: id,
        email: email,
        displayName: displayName ?? this.displayName,
        isHost: isHost ?? this.isHost,
        fcmToken: fcmToken ?? this.fcmToken,
        lastKnownLocation: lastKnownLocation ?? this.lastKnownLocation,
        createdAt: createdAt,
      );
}
