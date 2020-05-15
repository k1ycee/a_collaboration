class Viewers{
  final String articleText;
  final String articlePicUrl;
  final String articleTitle;
  final String articleDescription;

  Viewers({this.articleDescription, this.articlePicUrl, this.articleText, this.articleTitle});


  Viewers.fromData(Map<String, dynamic> data)
    : articleText = data["articleText"],
      articlePicUrl = data["articlePicUrl"],
      articleTitle = data["articleTitle"],
      articleDescription = data["articleDescription"];
}