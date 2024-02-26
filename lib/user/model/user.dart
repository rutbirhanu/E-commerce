class User{
  String name;
  String id;
  int phone;

  User({required this.name, required this.id, required this.phone});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json["name"],
      phone: json["phone"],
      id: json["id"]
    );}

    Map<String, dynamic> toJson(){
      return {
        "name":name,
        "id":id,
        "phone":phone
      };
    }


}