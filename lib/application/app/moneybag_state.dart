import 'package:equatable/equatable.dart';

import 'package:money_bag/domain/failure.dart';

class MoneyBagState extends Equatable {
  final bool loading;
  final Failure failure;
  const MoneyBagState({
    required this.loading,
    required this.failure,
  });

  MoneyBagState copyWith({
    bool? loading,
    Failure? failure,
  }) {
    return MoneyBagState(
      loading: loading ?? this.loading,
      failure: failure ?? this.failure,
    );
  }

  factory MoneyBagState.idle() =>
      MoneyBagState(loading: false, failure: Failure.none());

  factory MoneyBagState.loading() =>
      MoneyBagState(loading: true, failure: Failure.none());

  factory MoneyBagState.failure(Failure failure) =>
      MoneyBagState(loading: false, failure: failure);

  @override
  String toString() => 'MoneyBagState(loading: $loading, failure: $failure)';

  @override
  List<Object> get props => [loading, failure];
}
