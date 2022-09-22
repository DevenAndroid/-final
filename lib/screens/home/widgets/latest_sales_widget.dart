import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/store_order_controller.dart';
import '/constraints/colors.dart';
import '/screens/order/order_details.dart';
import '../../../data/models/order/order.dart';
import '../../../utils/date_formatter.dart';

class LatestSales extends StatefulWidget {
  final List<StoreOrder>? state;
  const LatestSales({Key? key, this.state}) : super(key: key);

  @override
  State<LatestSales> createState() => _LatestSalesState();
}

class _LatestSalesState extends State<LatestSales> {
  final StoreOrderController storeController = Get.find<StoreOrderController>();

  @override
  initState(){
    super.initState();
    updateCount();
  }

  updateCount(){
    storeController.itemCount.value = widget.state!.length.toString();
  }

  @override
  Widget build(BuildContext context) {
    storeController.itemCount.value = widget.state!.length.toString();
    print("item count>>>>>>>>00 ${storeController.itemCount}");
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const {
        0: FlexColumnWidth(3),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(2),
      },
      children: [
        const TableRow(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Order No',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: colorPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Status',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: colorPrimary,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Order Amount',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: colorPrimary,
                ),
              ),
            ),
          ],
        ),
        ...List.generate(
          widget.state?.length ?? 0,
          (index) => TableRow(
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.grey.withOpacity(0.3),
                  width: 0.3,
                ),
              ),
            ),
            children: [
              TableRowInkWell(
                onTap: (() => Get.to(() => OrderDetailsScreen(orderId: widget.state?[index].id,),)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#${widget.state?[index].id}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        orderDateFormat.format(DateTime.parse(
                            "${widget.state?[index].createDate?.date}")),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TableRowInkWell(
                onTap: (() => Get.to(
                      () => OrderDetailsScreen(
                        orderId: widget.state?[index].id,
                      ),
                    )),
                child: Text('${widget.state?[index].status}'),
              ),
              TableRowInkWell(
                onTap: (() => Get.to(
                      () => OrderDetailsScreen(
                        orderId: widget.state?[index].id,
                      ),
                    )),
                child: Text(
                  '${widget.state?[index].currency} ${widget.state?[index].shippingTotal} ',
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getStatusText(String status) {
    switch (status) {
      case 'pending':
        return Text(
          'Pending',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorAlert.withOpacity(0.5),
          ),
        );
      case 'processing':
        return Text(
          'Processing',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorSecondary.withOpacity(0.5),
          ),
        );
      case 'on-hold':
        return Text(
          'On-hold',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey.withOpacity(0.5),
          ),
        );
      case 'completed':
        return Text(
          'Completed',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorSuccess.withOpacity(0.5),
          ),
        );
      case 'cancelled':
        return Text(
          'Cancelled',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.5),
          ),
        );
      case 'refunded':
        return Text(
          'Refunded',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorEarningsLine.withOpacity(0.5),
          ),
        );
      case 'failed':
        return Text(
          'Failed',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorAlert.withOpacity(0.5),
          ),
        );
      case 'failed':
        return Text(
          'Failed',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorAlert.withOpacity(0.5),
          ),
        );
      default:
        return Text(
          'Unknown',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey.withOpacity(0.5),
          ),
        );
    }
  }
}
