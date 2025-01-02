```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = json.decode(response.body);
      // Accessing a non-existent key can lead to an error
      final value = jsonResponse['nonExistentKey']; 
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
  }
}
```