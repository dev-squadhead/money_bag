import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import 'package:money_bag/domain/transaction_type.dart';

class TransactionSummery extends Equatable {
  final int date;
  final double amount;

  const TransactionSummery(this.date, this.amount);

  @override
  List<Object> get props => [date, amount];

  static List<TransactionSummery> getSummeryFromTransactions(
      List<Transaction> transactions) {
    final mapSummery = <int, double>{};
    for (final Transaction t in transactions) {
      mapSummery.update(t.time.day, (value) => value + t.amount,
          ifAbsent: () => t.amount);
    }
    final d = mapSummery
        .map((key, value) => MapEntry(key, TransactionSummery(key, value)))
        .values
        .toList();

    return d;
  }

  @override
  String toString() => 'TransactionSummery(date: $date, amount: $amount)';
}

class Transaction extends Equatable {
  final String walletId;
  final String id;
  final double amount;
  final String purpose;
  final DateTime time;
  final TransactionType transactionType;
  const Transaction({
    required this.walletId,
    required this.id,
    required this.amount,
    required this.purpose,
    required this.time,
    required this.transactionType,
  });

  Transaction copyWith({
    String? walletId,
    String? id,
    double? amount,
    String? purpose,
    DateTime? time,
    TransactionType? transactionType,
  }) {
    return Transaction(
      walletId: walletId ?? this.walletId,
      id: id ?? this.id,
      amount: amount ?? this.amount,
      purpose: purpose ?? this.purpose,
      time: time ?? this.time,
      transactionType: transactionType ?? this.transactionType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'wallet_id': walletId,
      'amount': amount,
      'purpose': purpose,
      'time': Timestamp.fromDate(time),
      'transaction_type': transactionType.toStr,
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      walletId: map['wallet_id'],
      id: map['id'] ?? '',
      amount: map['amount']?.toDouble() ?? 0.0,
      purpose: map['purpose'] ?? '',
      time: (map['time'] as Timestamp).toDate(),
      transactionType: typeFromStr(map['transaction_type']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) =>
      Transaction.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Transaction(walletId: $walletId, id: $id, amount: $amount, purpose: $purpose, time: $time, transactionType: $transactionType)';
  }

  @override
  List<Object> get props {
    return [
      walletId,
      id,
      amount,
      purpose,
      time,
      transactionType,
    ];
  }
}
