import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 3000000, accountTypeName: '신한 주거래 우대 통장(저축예금)');
final bankAccountShinhan2 = BankAccount(bankShinhan, 50000000, accountTypeName: '저축예금');
final bankAccountShinhan3 = BankAccount(bankShinhan, 2000000, accountTypeName: "저축예금");
final bankAccountTtoss1 = BankAccount(bankTtoss, 12000000);
final bankAccountTtoss2 = BankAccount(bankTtoss, 120000);
final bankAccountKakao1 = BankAccount(bankKakao, 8000000, accountTypeName: "입출금통장");
final bankAccountKakao2 = BankAccount(bankKakao, 100000, accountTypeName: "저축예금");
final bankAccountKakao3 = BankAccount(bankKakao, 5500000, accountTypeName: "주식통장");

final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountTtoss1,
  bankAccountTtoss2,
  bankAccountKakao1,
  bankAccountKakao2,
  bankAccountKakao3,
];