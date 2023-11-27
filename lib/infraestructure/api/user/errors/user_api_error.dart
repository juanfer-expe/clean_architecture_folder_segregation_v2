class UserApiError implements Exception {
  @override
  String toString() {
    return 'Error al obtener el usuario';
  }
}