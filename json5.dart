import 'dart:convert';

//직렬화 : 객체를 json형태로 변환하는 것
//       객체 -> map -> string
//       jsonencode
//       객체에  toJson() 메서드가 필요하다.
//역직렬화 : json형태의 데이터를 객체로 변환하는 것
//       string -> map -> 객체
//       jsondecode
//       객체에  fromJson() 메서드가 필요하다.
void main() {
  // jsonencode : Map => string 역할!
  //
  Map<String, dynamic> map = {"name": "류한욱", "age": 30};

  String jsonData = jsonEncode(map);

  print(jsonData);
  String jsonSamplededata = """
{
""name": "류한욱",
  "age": 30,

}
""";
  var decodedData = jsonDecode(jsonSamplededata);
  print(decodedData.runtimeType);
  print(decodedData);

  Human human = Human.fromJson(decodedData);
  human.toJson();
}

class Human {
  string name;
  int age;

  Human {{
      required this.name,
      required this.age,
  }};

  Human .fromJson(Map<String, dynamic> map) 
      : this(
      : name = json['name'],
        age = json['age'];
      )
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}
