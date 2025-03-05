class StudentModel{
  String name;
  String age;
  String place;
  String  id;
  StudentModel({required this.name,required this.age,required this.place, required this.id });

  factory StudentModel.fromMap(Map<String, dynamic>json){
    return StudentModel(
      name: json['name'],
      age: json['age'],
      place: json["place"],
      id: json["id"]??'',
    );}
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "age": age,
      "place": place,
      "id":id,
    };
  }
  StudentModel copyWith({
    String? name,
    String? age,
    String? place,
    String? id,
  }) {
    return StudentModel(
      name: name ?? this.name,
      place: place ?? this.place,
      age: age ?? this.age,
      id: id ??  this.id,


    );
  }
}
