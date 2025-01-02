```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);

      // Solution 1: Using containsKey
      if (jsonResponse.containsKey('data')) {
        final value = jsonResponse['data'];
        print(value);
      } else {
        print('Key "data" not found');
      }

      // Solution 2: Using the ?. operator
      final value2 = jsonResponse['data2']?.toString(); //Handles null safely
      print(value2);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```