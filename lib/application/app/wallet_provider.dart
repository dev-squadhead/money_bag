import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:money_bag/application/auth/auth_provider.dart';
import 'package:money_bag/domain/wallet.dart';
import 'package:money_bag/infrastructure/moneybag_repo.dart';

final walletStrmProvider = StreamProvider<List<Wallet>>((ref) {
  final uid = ref.watch(authProvider.select((value) => value.profile.id));
  final repo = MoneybagRepo(uid);
  return repo.walletStream.map((event) =>
      List<Wallet>.from(event.docs.map((e) => Wallet.fromMap(e.data()))));
});
