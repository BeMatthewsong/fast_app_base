import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank.dart';

class BankAccount {
  final Bank bank;
  final String accountNumber;
  final String accountHoldingName;
  int balance;
  final String? accountTypeName;

  BankAccount(
    this.bank,
    this.accountNumber,
    this.accountHoldingName,
    this.balance, {
    this.accountTypeName,
  });
}
