abstract class Failure implements Exception {
  final String? message;
  final String? statusCode;

  Failure(this.message, this.statusCode);
}

class ErrorResponse extends Failure {
  ErrorResponse(String? message, String? statusCode)
      : super(message, statusCode);
}

class EmptyResponse extends Failure {
  EmptyResponse(String? message, String? statusCode)
      : super(message, statusCode);
}

class InternalError extends Failure {
  InternalError(String? message, String? statusCode)
      : super(message, statusCode);
}
