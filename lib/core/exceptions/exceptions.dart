class ApiException implements Exception {
  ApiException(this.message);
  final String message;
}

class NetworkException implements Exception {
  NetworkException(this.message);
  final String message;
}

class UnauthorizedException implements Exception {
  UnauthorizedException(this.message);
  final String message;
}

class BadRequestException implements Exception {
  BadRequestException(this.message);
  final String message;
}

class InternalServerException implements Exception {
  InternalServerException(this.message);
  final String message;
}

class NotFoundException implements Exception {
  NotFoundException(this.message);
  final String message;
}
