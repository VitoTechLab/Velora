abstract class AppException implements Exception {
  final String message;
  AppException(this.message);
  @override
  String toString() => message;
}

class ServerException extends AppException {
  ServerException([super.message = 'Server Error']);
}

class NotFoundException extends AppException {
  NotFoundException([super.message = 'Data not found']);
}

class DuplicateException extends AppException {
  DuplicateException([super.message = 'Duplicate data']);
}

class ValidationException extends AppException {
  ValidationException([super.message = 'Validation error']);
}

class UnauthenticatedException extends AppException {
  UnauthenticatedException([super.message = 'User is not authenticated']);
}

/// Base class untuk semua exception terkait autentikasi.
abstract class AuthException extends AppException {
  AuthException(super.message);
}

/// Dilempar ketika email atau password salah.
class InvalidCredentialsException extends AuthException {
  InvalidCredentialsException()
    : super('Email atau password yang Anda masukkan salah.');
}

/// Dilempar saat registrasi jika email sudah digunakan.
class EmailInUseException extends AuthException {
  EmailInUseException()
    : super('Email ini sudah terdaftar. Silakan gunakan email lain.');
}

/// Dilempar saat login jika user tidak ditemukan.
class UserNotFoundException extends AuthException {
  UserNotFoundException() : super('Pengguna dengan email ini tidak ditemukan.');
}

/// Dilempar jika terjadi masalah dengan koneksi jaringan.
class NetworkException extends AuthException {
  NetworkException() : super('Terjadi masalah dengan koneksi internet Anda.');
}
