class User{
  final String username;
  final String id;


  User({this.username, this.id});

  User.fromjson(Map<String, dynamic> data)
    : username = data["data"],
      id = data["id"];


  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'username': username
    };
  }
}