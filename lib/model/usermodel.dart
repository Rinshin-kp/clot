class UserModel{
    String name;
   String email;
    String password;
    String lastname;
   String  id;
   UserModel({required this.name,required this.email,required this.lastname, required this.password,required this.id, required });

   factory UserModel.fromMap(Map<String, dynamic>json){
      return UserModel(
         name: json['name'],
         lastname: json['lastname'],
         email: json["email"],
         password: json["password"],
         id: json["id"],
      );}
   Map<String, dynamic> toMap() {
      return {
         "name": name,
         "lastname": lastname,
         "email": email,
         "password": password,
          "id":id,
      };
   }
   UserModel copyWith({
      String? name,
      String? email,
      String? password,
      String? lastname,
       String? id,
   }) {
      return UserModel(
          name: name ?? this.name,
         lastname: lastname ?? this.lastname,
          email: email ?? this.email,
          password: password ?? this.password,
         id: id ??  this.id,


      );
   }
   }
