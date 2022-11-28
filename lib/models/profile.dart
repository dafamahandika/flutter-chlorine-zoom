class Profile {
  final String username;
  final String displayName;
  final String phone;
  final String email;
  final String country;
  final String date;

  Profile({
    required this.username,
    required this.displayName,
    required this.phone,
    required this.email,
    required this.country,
    required this.date,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      username: json["username"],
      displayName: json["display_name"],
      phone: json["phone"],
      email: json["email"],
      country: json["country"],
      date: json["date"],
    );
  }
}
