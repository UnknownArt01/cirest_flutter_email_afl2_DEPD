part of 'services.dart';

class Cirestsmtpservices {
  static Future<http.Response> sendMail(String email) {
    return http.post(
        Uri.https(Const.smtpUrl,
            "/selyandaru/ci-rest-api/cirestapi/api/mahasiswa/sendmail"),
        headers: <String, String>{
          'content-type': 'application/json; charset=utf-8'
        },
        body: jsonEncode(<String, dynamic>{'email': email}));
  }
}
