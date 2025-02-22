abstract class SafeProfileError {
  final String message;

  SafeProfileError(this.message);
}

class SafeDioResponseProfileError extends SafeProfileError {
  SafeDioResponseProfileError(String message) : super(message);
}
