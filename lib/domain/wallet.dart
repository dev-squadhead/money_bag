import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Wallet extends Equatable {
  final String name;
  final String id;
  final double balance;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Wallet({
    required this.name,
    required this.id,
    required this.balance,
    required this.createdAt,
    required this.updatedAt,
  });

  Wallet copyWith({
    String? name,
    String? id,
    double? balance,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Wallet(
      name: name ?? this.name,
      id: id ?? this.id,
      balance: balance ?? this.balance,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'balance': balance,
      'created_at': Timestamp.fromDate(createdAt),
      'updated_at': Timestamp.fromDate(updatedAt),
    };
  }

  factory Wallet.fromMap(Map<String, dynamic> map) {
    return Wallet(
      name: map['name'] ?? '',
      id: map['id'] ?? '',
      balance: map['balance']?.toDouble() ?? 0.0,
      createdAt: (map['created_at'] as Timestamp).toDate(),
      updatedAt: (map['updated_at'] as Timestamp).toDate(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Wallet.fromJson(String source) => Wallet.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Wallet(name: $name, id: $id, balance: $balance, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  List<Object> get props {
    return [
      name,
      id,
      balance,
      createdAt,
      updatedAt,
    ];
  }
}
