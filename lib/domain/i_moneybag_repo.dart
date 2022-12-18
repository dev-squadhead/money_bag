import 'package:fpdart/fpdart.dart';
import 'package:money_bag/domain/failure.dart';
import 'package:money_bag/domain/transaction.dart';
import 'package:money_bag/domain/wallet.dart';

abstract class IMoneybagRepo {
  TaskOption<Failure> transaction(Transaction transaction);
  TaskOption<Failure> createWallet(Wallet wallet);

  TaskOption<Failure> deleteTransaction(String id);
  Stream get walletStream;
  Stream get transactionStream;
}
