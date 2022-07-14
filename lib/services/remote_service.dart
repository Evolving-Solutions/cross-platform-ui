import 'package:http/http.dart' as http;

class RemoteService {
  var client = http.Client();

  Future<String?> shortenUrl(String longUrl) async {
    var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    var request = http.Request(
        'POST', Uri.parse('https://project-k-dev-api.evolvingsoftware.io/url'));

    request.bodyFields = {'long_url': longUrl};
    request.headers.addAll(headers);

    http.StreamedResponse streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);

    print('response ${response}');

    if (response.statusCode == 200) {
      var json = response.body;
      print('jseon ${json}');
      return json;
    }
    return null;
  }
}
