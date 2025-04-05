class AppException implements Exception {
  final String _message;
  final String _prefix;

  AppException(this._message, this._prefix);

  @override
  String toString() {
    return 'AppException{message: $_message, prefix: $_prefix}';
  }
}

class NoInternetException extends AppException {
  NoInternetException([String? message])
    : super(message!, "No internet available");
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException([String? message]) : super(message!, "Unauthorized exception");
}

class RequestTimeoutException extends AppException {
  RequestTimeoutException([String? message])
    : super(message!, "Request timed out");
}

class InternalServerErrorException extends AppException {
  InternalServerErrorException([String? message])
      : super(message ?? "Something went wrong on the server", "Server Error");
}