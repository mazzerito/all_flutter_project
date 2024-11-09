class User {
  final int? id;
  final String userName;
  final String email;
  final String? profilePicture;

  User({
    this.id,
    required this.userName,
    required this.email,
    this.profilePicture,
  });

  // Convert JSON to User object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['user_id'],
      userName: json['user_name'],
      email: json['email'],
      profilePicture: json['profile_picture'],
    );
  }

  // Convert User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'user_name': userName,
      'email': email,
    };
  }
}
