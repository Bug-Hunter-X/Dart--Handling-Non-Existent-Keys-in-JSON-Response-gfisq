# Dart: Handling Non-Existent Keys in JSON Response

This repository demonstrates a common error in Dart when working with JSON responses: accessing a key that might not exist. The `bug.dart` file shows the erroneous code, while `bugSolution.dart` provides a corrected version.

## Problem

The `fetchData` function in `bug.dart` fetches JSON data from an API.  It then attempts to access the value associated with the key 'nonExistentKey'. If this key is not present in the JSON, a runtime error occurs.

## Solution

The `bugSolution.dart` file demonstrates a safer approach. It uses the `containsKey` method to check for the existence of the key before accessing it, preventing runtime errors.  Alternative solution using ?. operator is also implemented.