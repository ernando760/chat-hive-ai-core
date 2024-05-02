class ExceptionBase implements Exception {
  final String messageErro;
  final StackTrace? stackTrace;
  final String label;
  ExceptionBase(
      {required this.label, required this.messageErro, this.stackTrace});
}
