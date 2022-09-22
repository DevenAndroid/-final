import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/screens/booking_list/controllers/booking_list_controller.dart';
import 'package:dinelah_vendor/screens/booking_list/repositorys/update_booking_status_repo.dart';
import '../../common_widget/leading_icon.dart';
import '../../constraints/colors.dart';
import '../../constraints/styles.dart';
import 'big_text.dart';
import 'colors_shared.dart';
import 'medium_text.dart';

class BookingListScreen extends StatefulWidget {
  const BookingListScreen({Key? key}) : super(key: key);

  @override
  State<BookingListScreen> createState() => _BookingListScreenState();
}

class _BookingListScreenState extends State<BookingListScreen> {
  final controller = Get.put(BookingListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFed1c24),
        title: const Text('Booking List'),
        leading: const LeadingAppIcon(),
        elevation: 0,
      ),
      body: Obx(() {
        return !controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: controller.model.value.data!.isEmpty ?
                      const Center(child: Text("No Bookings Found"),) :
                      ListView.builder(
                        itemCount: controller.model.value.data?.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Card(
                              child: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          BigText(
                                            text: "Product Name: ${controller.model.value.data?[index].product}",
                                            fontWeight: FontWeight.bold,
                                            textSize: 16,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          MediumText(
                                              text:
                                                  "Customer Name : ${controller.model.value.data?[index].customer.toString()}",
                                              color: Colors.black.withOpacity(.8),
                                              textSize: 16),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          MediumText(
                                              text:
                                              "Booking Id : ${controller.model.value.data?[index].bookingId}",
                                              color: Colors.black.withOpacity(.8),
                                              textSize: 16),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          MediumText(
                                              text:
                                              "Order Id : ${controller.model.value.data?[index].order_id}",
                                              color: Colors.black.withOpacity(.8),
                                              textSize: 16),
                                          const SizedBox(height: 10,),
                                          MediumText(
                                            text: "Start : ${controller.model.value.data?[index].start.toString()}",
                                            color: Colors.black.withOpacity(.6),
                                          ),
                                          const SizedBox(height: 10,),
                                          MediumText(
                                            text: "End : ${controller.model.value.data?[index].end.toString()}",
                                            color: Colors.black.withOpacity(.6),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          controller.model.value.data?[index].personCounts?.length == 0 ? const SizedBox() : MediumText(
                                            text: "Person Counts",
                                            color: Colors.black.withOpacity(.8),
                                            textSize: 16,
                                          ),
                                          ListView.builder(
                                            physics: const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: controller.model.value.data?[index].personCounts?.length,
                                              itemBuilder: (context, index1){
                                            return Column(
                                              children: [
                                                const SizedBox(height: 8,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    MediumText(
                                                      text: "${controller.model.value.data?[index].personCounts?[index1].title.toString()} "
                                                          ": ${controller.model.value.data?[index].personCounts?[index1].value.toString()}",
                                                      color: Colors.black.withOpacity(.6),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            );
                                          }),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: MediumText(
                                                  text: "Cost: ${controller.model.value.data?[index].cost}",
                                                  fontWeight: FontWeight.w600,
                                                  color: AddColor.orangeColor,
                                                  textSize: 15,
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 5,
                                                // child: Container(),
                                                child: DropdownButtonFormField(
                                                  decoration: inputDecorationFilled2.copyWith(
                                                    hintText: 'Type',
                                                    isDense: true,
                                                    fillColor: textFieldFillColor,
                                                    filled: true,
                                                  ),
                                                  validator: (value) => value == null
                                                      ? 'Please select type'
                                                      : null,
                                                  value: controller.model.value.data?[index].status.toString(),
                                                  iconSize: 22,
                                                  dropdownColor: Colors.grey.shade100,
                                                  items: controller.editDropDownValue.map((items) {
                                                    return DropdownMenuItem(
                                                      value: items,
                                                      child: Text(
                                                        items.toString(),
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                            Colors.black.withOpacity(.8)),
                                                      ),
                                                    );
                                                  }).toList(),
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      controller.model.value.data?[index].status = newValue.toString();
                                                      debugPrint("Sending data>>>>>>>>>>>>${controller.model.value.data?[index].bookingId.toString()}  ${newValue.toString()}");
                                                      updateBookingStatus(controller.model.value.data?[index].bookingId.toString(), newValue.toString()).then((value) {
                                                        debugPrint("Response data>>>>>>>>>>>>   ${value.message}>>>>> $value");
                                                        if(value.status == "success"){
                                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.message.toString())));
                                                        }
                                                      });
                                                    });
                                                  },
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              );
      }),
    );
  }
}
