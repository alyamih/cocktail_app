class UserItem {
  int? starsCount;

  UserItem({this.starsCount});

  factory UserItem.fromJson(Map<String, dynamic> parsedJson) {
    return UserItem(
      starsCount: parsedJson['starsCount'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "starsCount": starsCount,
    };
  }
}
