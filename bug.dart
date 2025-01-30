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
    // This catch block only catches exceptions thrown within the try block
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled at a higher level
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully');
  } catch (e) {
    // Handle exceptions caught from fetchData()
    print('An error occurred: $e');
  }
}
```