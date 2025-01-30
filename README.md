# Uncommon Dart Exception Handling Bug

This repository demonstrates a subtle bug related to exception handling in Dart. The `bug.dart` file contains code that improperly handles exceptions, potentially leading to unexpected behavior. The `bugSolution.dart` file provides a corrected version.

The bug lies in the way exceptions are caught and re-thrown.  Exceptions that occur outside the `try` block will not be handled correctly.

The solution improves the exception handling to reliably catch and handle errors at a higher level.