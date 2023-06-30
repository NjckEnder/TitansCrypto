class UserInfo {
  final String email;
  final String password;
  final bool isValid;
  final String? errorMessage;

  const UserInfo({
    this.email = "",
    this.password = "",
    this.isValid = false,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [email, password, isValid, errorMessage];

  UserInfo copyWith({
    String? email,
    String? password,
    bool? isValid,
    String? errorMessage,
  }) {
    return UserInfo(
      email: email ?? this.email,
      password: password ?? this.password,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

// class UserPersonalInfo extends Equatable {

//   String email;
//   String name;
//   String profileImageUrl;
//   String userName;
//   dynamic userId;
//   String deviceToken;
//   int numberOfNewNotifications;
//   String channelId;

//   UserPersonalInfo({
//     this.name = "",
//     this.channelId = "",
//     this.deviceToken = "",
//     this.email = "",
//     this.profileImageUrl = "",
//     this.userName = "",
//     this.userId = "",
//     this.numberOfNewNotifications = 0,
//   });

//   static UserPersonalInfo fromDocSnap(Map<String, dynamic>? snap) {
//     return UserPersonalInfo(
//       name: snap?["name"] ?? "",
//       email: snap?["email"] ?? "",
//       profileImageUrl: snap?["profileImageUrl"] ?? "",
//       userName: snap?["userName"] ?? "",
//       userId: snap?["uid"] ?? "",
//       numberOfNewNotifications: snap?["numberOfNewNotifications"] ?? 0,
//       deviceToken: snap?["deviceToken"] ?? "",
//       channelId: snap?["channelId"] ?? "",
//     );
//   }

//   Map<String, dynamic> toMap() => {
//         'name': name,
//         'userName': userName,
//         'email': email,
//         'profileImageUrl': profileImageUrl,
//         'uid': userId,
//         'numberOfNewNotifications': numberOfNewNotifications,
//         'deviceToken': deviceToken,
//         'channelId': channelId,
//       };

//   @override
//   List<Object?> get props => [
//         email,
//         name,
//         profileImageUrl,
//         userName,
//         userId,
//         numberOfNewNotifications,
//         deviceToken,
//         channelId,
//       ];
// }
