import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SendMessageService {
  final String apiKey = dotenv.env['GEMINI_API_KEY'] ?? '';
  Future<String?> sendMessage(String message) async {
    if (apiKey.isEmpty) {
      print('API key is missing!');
      return null;
    }

    final url = Uri.parse(
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-3-pro-preview:generateContent?key=$apiKey",
    );

    final body = {
      "contents": [
        {
          "parts": [
            {"text": "[system] You are a helpful assistant."},
            {"text": message},
          ],
        },
      ],
      "generationConfig": {"temperature": 0.7, "maxOutputTokens": 200},
    };

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['candidates']?[0]?['content']?[0]?['text'] ?? "No content";
      } else {
        print('Error ${response.statusCode}: ${response.body}');
      }
    } catch (e) {
      return 'Exception: $e';
    }
  }
}
