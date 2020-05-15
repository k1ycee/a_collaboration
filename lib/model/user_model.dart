class User{
  final String id;
  final String username;
  final String articleText;
  final String articleTitle;
  final String articleDescription;
  final String profilePicUrl;
  final String articlePicUrl;

  User({this.articleDescription, this.articleText, this.articleTitle, this.username, this.id, this.articlePicUrl, this.profilePicUrl});

  User.fromJson(Map<String, dynamic> data)
    : id = data["id"],
      username = data["username"],
      articleText = data["articleText"],
      articleTitle = data["articleTitle"],
      articleDescription = data["articleDescription"],
      profilePicUrl = data["profilePicUrl"],
      articlePicUrl = data["articlePicUrl"];


  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'username': username,
      'articleText': articleText,
      'articleTitle': articleTitle,
      'articleDescription': articleDescription,
      'profilePicUrl': profilePicUrl,
      'articlePicUrl': articlePicUrl
    };
  }
}