enum TransactionType { incoming, outgoing, adjust }

extension TransactionTypeLogic on TransactionType {
  String get toStr {
    switch (this) {
      case TransactionType.incoming:
        return 'incoming';
      case TransactionType.outgoing:
        return 'outgoing';
      case TransactionType.adjust:
        return 'adjust';
    }
  }

  String get toDialogueTitle {
    switch (this) {
      case TransactionType.incoming:
        return 'Add money';
      case TransactionType.outgoing:
        return 'Expense info';
      case TransactionType.adjust:
        return 'Adjust balance';
    }
  }

  String get toSignStr {
    switch (this) {
      case TransactionType.incoming:
        return '+';
      case TransactionType.outgoing:
        return '-';
      case TransactionType.adjust:
        return '*';
    }
  }

  double calculateBalance({required double balance, required double amount}) {
    switch (this) {
      case TransactionType.incoming:
        return balance + amount;
      case TransactionType.outgoing:
        return balance - amount;
      case TransactionType.adjust:
        return amount;
    }
  }
}

TransactionType typeFromStr(String type) {
  if (type == TransactionType.incoming.toStr) {
    return TransactionType.incoming;
  } else if (type == TransactionType.outgoing.toStr) {
    return TransactionType.outgoing;
  } else {
    return TransactionType.adjust;
  }
}
