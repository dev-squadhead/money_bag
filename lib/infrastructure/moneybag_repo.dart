import 'package:cloud_firestore/cloud_firestore.dart' hide Transaction;
import 'package:fpdart/fpdart.dart';
import 'package:money_bag/domain/failure.dart';
import 'package:money_bag/domain/i_moneybag_repo.dart';
import 'package:money_bag/domain/transaction_type.dart';
import 'package:money_bag/domain/wallet.dart';
import 'package:money_bag/domain/transaction.dart';

class MoneybagRepo extends IMoneybagRepo {
  final String userId;
  final database = FirebaseFirestore.instance;

  MoneybagRepo(this.userId);

  @override
  TaskOption<Failure> createWallet(Wallet wallet) => TaskOption(() async {
        try {
          final walletCollection =
              database.collection('user').doc(userId).collection('wallets');
          final walletId = await walletCollection
              .add(wallet.toMap())
              .then((value) => value.id);
          await walletCollection.doc(walletId).update({'id': walletId});
          return none();
        } catch (e) {
          return some(Failure(error: e.toString(), context: 'create wallet'));
        }
      });

  @override
  TaskOption<Failure> transaction(Transaction transaction) =>
      TaskOption(() async {
        try {
          final walletDoc = await database
              .collection('user')
              .doc(userId)
              .collection('wallets')
              .doc(transaction.walletId)
              .get();
          final wallet = Wallet.fromMap(walletDoc.data()!);
          final walletCollection =
              database.collection('user').doc(userId).collection('wallets');
          final newBalance = transaction.transactionType.calculateBalance(
              amount: transaction.amount, balance: wallet.balance);
          await walletCollection.doc(wallet.id).update({'balance': newBalance});

          final transactionCollection = database
              .collection('user')
              .doc(userId)
              .collection('transactions');
          final transactionId = await transactionCollection
              .add(transaction.toMap())
              .then((value) => value.id);
          await transactionCollection
              .doc(transactionId)
              .update({'id': transactionId});
          return none();
        } catch (e) {
          return some(Failure(error: e.toString(), context: 'create wallet'));
        }
      });

  @override
  Stream get transactionStream {
    final now = DateTime.now();
    final lastMonth = DateTime(now.year, now.month - 1, now.day);
    return database
        .collection('user')
        .doc(userId)
        .collection('transactions')
        .orderBy('time', descending: true)
        .where('time', isGreaterThan: Timestamp.fromDate(lastMonth))
        .snapshots();
  }

  @override
  Stream get walletStream =>
      database.collection('user').doc(userId).collection('wallets').snapshots();

  @override
  TaskOption<Failure> deleteTransaction(String id) => TaskOption(() async {
        try {
          await database
              .collection('user')
              .doc(userId)
              .collection('transactions')
              .doc(id)
              .delete();
          return none();
        } catch (e) {
          return some(Failure(error: e.toString(), context: 'delete wallet'));
        }
      });
}
