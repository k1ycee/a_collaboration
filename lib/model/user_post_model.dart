class UserPost{
  final String articleText;
  final String articleTitle;
  final String articleDescription;
  final String profilePicUrl;
  final String articlePicUrl;

  UserPost({this.articleDescription, this.articleText, this.articleTitle,this.articlePicUrl, this.profilePicUrl});

  UserPost.fromJson(Map<String, dynamic> data)
    : 
      articleText = data["articleText"],
      articleTitle = data["articleTitle"],
      articleDescription = data["articleDescription"],
      profilePicUrl = data["profilePicUrl"],
      articlePicUrl = data["articlePicUrl"];


  Map<String, dynamic> toJson(){
    return {
      'articleText': articleText,
      'articleTitle': articleTitle,
      'articleDescription': articleDescription,
      'profilePicUrl': profilePicUrl,
      'articlePicUrl': articlePicUrl
    };
  }
}