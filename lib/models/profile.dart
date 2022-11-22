class Profile {
  final String username;
  final String displayname;
  final String urlpic;
  final String phone;
  final String adress;

  Profile(
      {required this.username,
      required this.displayname,
      required this.urlpic,
      required this.phone,
      required this.adress});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
        username: json["username"],
        displayname: json["display_name"],
        urlpic: json["url_pic"],
        phone: json["phone"],
        adress: json["address"]);
  }
}
