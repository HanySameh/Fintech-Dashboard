import 'package:flutter/cupertino.dart';

import '../styles/styles.dart';
import '../widgets/bar_chart_with_title.dart';

class ExpenseIncomeCharts extends StatelessWidget {
  const ExpenseIncomeCharts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BarChartWithTitle(
            title: "Expense",
            amount: 5340,
            barColor: Styles.defaultBlueColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: BarChartWithTitle(
            title: "Income",
            amount: 1980,
            barColor: Styles.defaultRedColor,
          ),
        ),
      ],
    );
  }
}
