import 'dart:convert';

void main()
{
 String jsonString = 
 '''{"name":"Dharshini",
      "age":21,
      "skills":["Java","Flutter","MySQL"]
    }''';

print(jsonString.runtimeType);
final decodedData = jsonDecode(jsonString);
print(decodedData.runtimeType);

// print(decodedData['name']);
// print(decodedData['age']);
// print(decodedData['skills']);
//Instead u can create a sepaarte model class
details d=details.fromJson(decodedData);
print("name: ${d.name}");
print("age: ${d.age}");
print("skills: ${d.skills}");

String encodedData = jsonEncode(d.encodeMap());
print(encodedData);
}

class details
{
  String name;
  int age;
  List<String> skills;

  details({required this.name, required this.age, required this.skills});

  factory details.fromJson(Map<String, dynamic> data) {
    return details(
      name: data['name'],
      age: data['age'],
      skills: List<String>.from(data['skills']),
    );
  }

  Map<String, dynamic> encodeMap() {
    return {
      'name': name,
      'age': age,
      'skills': skills,
    };
  }
}