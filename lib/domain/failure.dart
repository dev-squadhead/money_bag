import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String error;
  final String context;
  const Failure({
    required this.error,
    required this.context,
  });

  factory Failure.none() => const Failure(error: '', context: '');

  @override
  List<Object> get props => [error, context];

  @override
  String toString() => 'Failure(error: $error, context: $context)';
}
