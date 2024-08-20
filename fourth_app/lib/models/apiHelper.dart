import 'package:fourth_app/models/StudentClass.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Apihelper {

 Future<List<dynamic>> GetStudents() async {
    //https://api.mohamed-sadek.com/index.html/Student/GET
    Uri url = Uri.https('api.mohamed-sadek.com', '/Student/GET');
    Map<String, String> headers = {
      "content-type": "application/json"
    };
    var response = await get(url, headers: headers);
    var data = jsonDecode(response.body)["Data"];
    
    if (data == null) {
      return []; // Return an empty list if data is null
    }
    
    return data as List<dynamic>;
  }


void AddStudent(Studentclass newStudent) async{
  //https://api.mohamed-sadek.com/index.html/Student/POST
  Uri url = Uri.https('api.mohamed-sadek.com', '/Student/POST');
Map<String, String> headers = {
  "content-type": "application/json; charset=utf-8"
};

Map<String, Object> body = {
  "FirstName": newStudent.firstname, // Corrected property name
  "LastName": newStudent.lastname,
  "Mobile": newStudent.phone,
  "Email": newStudent.email,
  "NationalID": newStudent.nationalID,
  "Age": newStudent.age,
};

var response = await post(
  url,
  headers: headers,
  body: jsonEncode(body), // Use jsonEncode from dart:convert
);

}
}