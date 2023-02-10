import 'enums/transaction_type.dart';

class Transaction {
  final String id;
  final String profileImage;
  final String transactionName;
  final DateTime dateTime;
  final double amount;
  final TransactionType transactionType;

  Transaction(
    this.id,
    this.transactionName,
    this.dateTime,
    this.amount,
    this.transactionType,
    this.profileImage,
  );
}
