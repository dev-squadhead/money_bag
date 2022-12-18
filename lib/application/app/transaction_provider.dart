import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/application/auth/auth_provider.dart';
import 'package:money_bag/domain/transaction.dart';
import 'package:money_bag/infrastructure/moneybag_repo.dart';

final transactionStrmProvider = StreamProvider<List<Transaction>>((ref) {
  final uid = ref.watch(authProvider.select((value) => value.profile.id));
  final repo = MoneybagRepo(uid);

  return repo.transactionStream.map((event) => List<Transaction>.from(
      event.docs.map((e) => Transaction.fromMap(e.data()))));
});
