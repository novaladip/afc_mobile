class InputValidator {
  static String email(String value, String fieldName) {
    final isValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(value);

    if (value.isEmpty) {
      return "$fieldName is cannot be empty";
    }

    if (!isValid) {
      return "Invalid email address";
    }

    return null;
  }

  static String required(String value, String fieldName) {
    if (value.isEmpty) {
      return '$fieldName is cannot be empty';
    }

    return null;
  }
}
