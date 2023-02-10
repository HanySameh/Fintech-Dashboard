import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../models/enums/transaction_type.dart';
import '../models/expense.dart';
import '../models/transaction.dart';
import '../styles/styles.dart';

class MockData {
  static BarChartGroupData makeGroupData(
      int x, double y1, Color barColor, double width) {
    return BarChartGroupData(
      barsSpace: 1,
      x: x,
      barRods: [
        BarChartRodData(
          y: y1,
          colors: [barColor],
          width: width,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ],
    );
  }

  static List<BarChartGroupData> getBarChartItems(Color color,
      {double width = 20}) {
    return [
      makeGroupData(0, 5, color, width),
      makeGroupData(1, 6, color, width),
      makeGroupData(2, 8, color, width),
      makeGroupData(3, 5, color, width),
      makeGroupData(4, 7, color, width),
      makeGroupData(5, 9, color, width),
      makeGroupData(6, 3, color, width),
    ];
  }

  static List<Transaction> get transactions {
    return [
      Transaction(
        "45673",
        "Spotify",
        DateTime.now(),
        569.50,
        TransactionType.outgoing,
        "https://cdn-icons-png.flaticon.com/512/174/174872.png?w=740&t=st=1676066134~exp=1676066734~hmac=8c35a71ab3180f40043be25785d1659cef8e4bc38cf2fe61ff7a0e2fd6d5c524",
      ),
      Transaction(
        "76154",
        "Transfer",
        DateTime.now(),
        350.50,
        TransactionType.incoming,
        "https://img.freepik.com/free-vector/remittance-money-forward-cash-overseas-direct-funding-give-allowance-spare-sum-getting-payroll-transferring-forex-money-drop-coin-vector-isolated-concept-metaphor-illustration_335657-2159.jpg?w=740&t=st=1676066297~exp=1676066897~hmac=24e7cdb3fae81d6ca5923f4281b2b660f1fd35c0850cac143229bcc85204ac4a",
      ),
      Transaction(
        "322587",
        "Investments",
        DateTime.now(),
        3448.99,
        TransactionType.outgoing,
        "https://img.freepik.com/free-vector/vector-3d-rising-red-arrow-breaks-through-surface-concept-irrepressible-growth_1284-43134.jpg?w=740&t=st=1676066355~exp=1676066955~hmac=fd6621c95ed53defb7715867c4bff49f26084e2d5761b73ab4f11e6e29fd367b",
      ),
    ];
  }

  static List<Expense> get otherExpanses {
    return [
      Expense(
        color: Styles.defaultBlueColor,
        expenseName: "Other expenses",
        expensePercentage: 50,
      ),
      Expense(
        color: Styles.defaultRedColor,
        expenseName: "Entertainment",
        expensePercentage: 35,
      ),
      Expense(
        color: Styles.defaultYellowColor,
        expenseName: "Investments",
        expensePercentage: 15,
      )
    ];
  }
}
