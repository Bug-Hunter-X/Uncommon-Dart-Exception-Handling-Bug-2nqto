```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the response
      // ...
    } else {
      // Handle errors appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // This catch block now catches exceptions from both try and outside of it.
    print('Error fetching data: $e');
    //No need to rethrow here as it's already handled
  }
}

void main() async {
  await fetchData(); //removed try-catch as exception is now handled in fetchData
  print('Data fetched successfully or error handled gracefully');
}
```