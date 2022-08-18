/// [ValidationService] it is service for validation of input text.
/// Methods:
/// - [numberValidation] function for numbers validation, it checks input values and return error if it is not number,
///   if it starts at zero, or if number is negative or null.

class ValidationManager {
  static String? passwordValidation(String input) {
    if (input.isEmpty) {
      return 'Password must be not empty';
    }

    if (input.length < 8) {
      return 'Too short';
    }

    if (!RegExp(r'^(?=.*?[A-ZА-Я]).{8,}$').hasMatch(input)) {
      return 'Password must contain at least one upper letter';
    }
    return null;
  }

  static String? validateUsername(String username) {
    if (username.isEmpty) {
      return 'Username must be not empty';
    }

    if (username.length < 5) {
      return 'Too short';
    }

    if (RegExp(r'^[ ]+$').hasMatch(username)) {
      return 'Username must be without spaces';
    }

    if (username.length > 15) {
      return 'Too lond';
    }

    return null;
  }
}
