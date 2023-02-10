import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

import '../data/mock_data.dart';
import '../models/enums/transaction_type.dart';
import '../responsive.dart';
import '../styles/styles.dart';
import '../widgets/category_box.dart';
import '../widgets/currency_text.dart';

class LatestTransactions extends StatelessWidget {
  LatestTransactions({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return CategoryBox(
      title: "Latest Transactions",
      suffix: TextButton(
        child: Text(
          "See all",
          style: TextStyle(
            color: Styles.defaultRedColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {},
      ),
      children: [
        Expanded(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: MockData.transactions.length,
            itemBuilder: (context, index) {
              var data = MockData.transactions[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    NetworkImage(data.profileImage),
                              ),
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 221, 160, 160),
                                ),
                                child: Icon(
                                  TransactionTypeExtensions(
                                    data.transactionType,
                                  ).icon,
                                  size: 12,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              data.transactionName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        intl.DateFormat.MMMd().add_jm().format(data.dateTime),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Visibility(
                      visible: !Responsive.isMobile(context),
                      child: Expanded(
                        child: Text(
                          "ID: ${data.id}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: CurrencyText(
                          fontSize: 16,
                          currency: "\$",
                          amount: data.amount,
                          transactionType: data.transactionType,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
