class NewModel{
  String name;
  String age;
  String place;
  String qulification;
  String  id;
  NewModel({required this.name,required this.age,required this.place,required this.qulification, required this.id });

  factory NewModel.fromMap(Map<String, dynamic>json){
    return NewModel(
      name: json['name'],
      age: json['age'],
      place: json["place"],
      id: json["id"]??'',
      qulification: json["qulification"]??''
    );}
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "age": age,
      "place": place,
      "qulification":qulification,
      "id":id,
    };
  }
  NewModel copyWith({
    String? name,
    String? age,
    String? place,
    String ? qulification,
    String? id,
  }) {
    return NewModel(
      name: name ?? this.name,
      place: place ?? this.place,
      age: age ?? this.age,
      id: id ??  this.id, qulification: qulification?? this.id,


    );
  }
}
