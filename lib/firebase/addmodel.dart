import 'dart:core';

class Addmodel{
   String name;
  String Email;
  String  password;
  String  confirmpassword;
  String  id;
  Addmodel({required this.name,required this.Email,required this.password,required this.confirmpassword, required this.id, required  });

  factory Addmodel.fromMap(Map<String, dynamic>json){
    return Addmodel(
      name: json['name'],
      Email:json['Email'] ,
      password: json ['password'],
      confirmpassword: json['confirmpassword'],
      id: '',
    );}
  Map<String, dynamic> toMap() {
    return {
      "name": name,
     "Email":Email,
     "password":password,
     "confirmpassword":confirmpassword,
      "id":id,
    };
  }
  Addmodel copyWith({
    String? name,
    String? Email,
    String? password,
    String ? confirmpassword,
    String? id,
  }) {
    return Addmodel(
      name: name ?? this.name,
    Email: Email?? this.Email,
      password: password??this.password,
     confirmpassword: confirmpassword??this.confirmpassword,
      id: id ??  this.id,


    );
  }
}