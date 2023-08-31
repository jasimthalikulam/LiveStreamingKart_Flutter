import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

@override
String otp = "";

@override
class ApiCaller {
  static Future<int> sendOtp(int contactNumber) async {
    final response = await http.post(
      Uri.parse('https://use2fun.onrender.com/user/getotp'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: jsonEncode({"mobile": contactNumber}),
    );
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body);
      return res['data']['otp'];
    } else {
      throw Exception(response.statusCode);
    }
  }

  static Future<bool> mobileExist(int contactNumber) async {
    final response = await http.post(
      Uri.parse('https://use2fun.onrender.com/user/checkmobileexists'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: jsonEncode({"mobile": contactNumber}),
    );
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body);
      return true;
    } else {
      throw Exception(response.statusCode);
    }
  }

  static Future<bool> createProfile(String name, int contactNumber, String dob,
      String gender, XFile? profilePhoto, String language) async {
    final headers = {
      'Content-Type': 'multipart/form-data',
      // Add any required authentication headers here if necessary
    };

    var request = http.MultipartRequest(
        'POST', Uri.parse('https://use2fun.onrender.com/user/register'));

    // Add user data to the request body
    request.fields['name'] = name;
    request.fields['mobile'] = contactNumber.toString();
    request.fields['dob'] = dob;
    request.fields['gender'] = gender;
    request.fields['language'] = language;

    // Add profile image to the request as a file
    if (profilePhoto != null) {
      var profileImageFile =
          await http.MultipartFile.fromPath('profile', profilePhoto.path);
      request.files.add(profileImageFile);
    }

    try {
      final streamedResponse = await request.send();

      if (streamedResponse.statusCode == 200) {
        print('User registration successful');
        return true;
        // Handle success, such as updating the UI or showing a success message
      } else {
        print('Failed to register user');
        // Handle error, such as showing an error message
      }
    } catch (e) {
      print('Error while registering user: $e');
      // Handle network or other errors
    }
    return false;
  }
}

class AuthService {
  final String baseUrl =
      'https://your-api-endpoint.com'; // Replace with your API endpoint

  Future<Map<String, dynamic>?> signInWithGoogle(String googleIdToken) async {
    final apiUrl =
        '$baseUrl/google-sign-in'; // Replace 'google-sign-in' with your API endpoint for Google Sign-In

    final headers = {
      'Content-Type': 'application/json',
      // Add any other required headers here if necessary
    };

    final requestBody = jsonEncode({
      'idToken': googleIdToken,
    });

    try {
      final response = await http.post(Uri.parse(apiUrl),
          headers: headers, body: requestBody);

      if (response.statusCode == 200) {
        // Successful API call
        return jsonDecode(
            response.body); // Assuming your API returns data in JSON format
      } else {
        // Handle API error
        print(
            'Failed to sign in with Google. Status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      // Handle network or other errors
      print('Error while signing in with Google: $e');
      return null;
    }
  }
}
