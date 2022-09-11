class Failure {
  final String tag;
  final dynamic exception;
  final StackTrace? stackTrace;
  Failure({
    required this.tag,
    required this.exception,
    this.stackTrace,
  });
}
