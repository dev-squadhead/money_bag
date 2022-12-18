import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/application/app/moneybag_state.dart';
import 'package:money_bag/application/auth/auth_provider.dart';
import 'package:money_bag/domain/i_moneybag_repo.dart';
import 'package:money_bag/domain/transaction.dart';
import 'package:money_bag/domain/wallet.dart';
import 'package:money_bag/infrastructure/moneybag_repo.dart';

final moneybagProvider =
    StateNotifierProvider<MoneybagNotifier, MoneyBagState>((ref) {
  final uid = ref.watch(authProvider.select((value) => value.profile.id));

  return MoneybagNotifier(MoneybagRepo(uid));
});

class MoneybagNotifier extends StateNotifier<MoneyBagState> {
  final IMoneybagRepo repo;
  MoneybagNotifier(this.repo) : super(MoneyBagState.idle());

  createWallet(Wallet wallet) async {
    state = MoneyBagState.loading();
    final data = await repo.createWallet(wallet).run();

    // state =
    //     data.match((t) => MoneyBagState.failure(t), () => MoneyBagState.idle());
  }

  createTransaction(Transaction transaction) async {
    state = MoneyBagState.loading();
    final data = await repo.transaction(transaction).run();

    // state =
    //     data.match((t) => MoneyBagState.failure(t), () => MoneyBagState.idle());
  }

  deleteTransaction(String transactionId) async {
    state = MoneyBagState.loading();
    final data = await repo.deleteTransaction(transactionId).run();

    // state =
    //     data.match((t) => MoneyBagState.failure(t), () => MoneyBagState.idle());
  }
}
