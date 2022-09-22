import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:dinelah_vendor/constraints/colors.dart';

import '../../../data/models/report/monthly_report.dart';

class ReportGridWidget extends StatelessWidget {
  final MonthlyReport? report;
  final Color circleColor;
  final int index;
  const ReportGridWidget({Key? key, this.report, required this.circleColor, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    'assets/icons/discount.png',
                    height: 24,
                    width: 24,
                    color: Colors.white,
                  ),
                  backgroundColor: circleColor,
                ),
                /// Percentage %%
                // const Spacer(),
                // Row(
                //   children: [
                //     Text(
                //       '${report?.percentage}%',
                //       style: const TextStyle(
                //         color: colorSuccess,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     const Icon(
                //       Icons.arrow_upward,
                //       color: colorSuccess,
                //       size: 18,
                //     ),
                //   ],
                // ),
              ],
            ),
            const SizedBox(height: 20),
            index == 2 || index == 3 ? Text(
              '${report?.value}',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.bold,
                color: report?.color,
              ),
            ): Text(
              '\$${report?.value}',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: report?.color,
                  ),
            ),
            const SizedBox(height: 6),
             Text('${report?.title}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
