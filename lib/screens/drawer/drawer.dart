import 'package:dinelah_vendor/data/repository/store_order_repository.dart';
import 'package:dinelah_vendor/screens/users_chat_screen/users_chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:dinelah_vendor/controller/drawer_controller.dart';
import 'package:dinelah_vendor/screens/booking_list/booking_list_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../controller/auth_controller.dart';
import '../../controller/product/product_detail_controller.dart';
import '../../controller/product/store_order_controller1.dart';
import '../../controller/store_settings_controller.dart';
import '../../data/local/auth_db.dart';
import '../../data/models/user/user.dart';
import '../../data/repository/product_repository.dart';
import '../notification/notification.dart';
import '../order/orders.dart';
import '../product/products.dart';
import '../profile/profile.dart';

class CommonDrawer extends StatefulWidget {
   const CommonDrawer({Key? key}) : super(key: key);

  @override
  State<CommonDrawer> createState() => _CommonDrawerState();
}

class _CommonDrawerState extends State<CommonDrawer> {
  final controller = Get.put(CommonDrawerController());
  final profileController = Get.put(StoreSettingsController());
  final loginController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return !controller.isDataLoading.value
          ?  const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding:  const EdgeInsets.only(top: 50, bottom: 20),
                    color: Color(0xFFed1c24),
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Container(
                          height: 125,
                          width: 125,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      '${profileController.storeLogoImagePath}'),
                                  fit: BoxFit.cover),
                              border: Border.all(width: 5, color: Colors.white),
                              shape: BoxShape.circle),
                        ),
                        Container(
                          padding:  const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 15),
                          width: double.maxFinite,
                          child: Text(
                            profileController.storeNameController.text,
                            style:  const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          padding:  const EdgeInsets.symmetric(horizontal: 15),
                          width: double.maxFinite,
                          child: Text(
                            profileController.storePhoneController.text,
                            style:  const TextStyle(
                                color: Colors.white, fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  /// Booking List
                  InkWell(
                    onTap: () {
                      Get.to(()=> const BookingListScreen());
                    },
                    child:  const ListTile(
                      leading: SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.list_alt_rounded,size: 30,color: Colors.black,),
                      ),
                      title: Text(
                        "Bookings List",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                   const Divider(),
                  ///  Product Screen
                  InkWell(
                    onTap: () {
                      Get.to(() => ProductsScreen());
                      Get.put(ProductRepository());
                      Get.lazyPut(()=>ProductDetailController());
                      },
                    child: const ListTile(
                      leading: SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.format_list_numbered_sharp,size: 30,color: Colors.black,),
                      ),
                      title: Text(
                        "My Products",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                   const Divider(),
                  InkWell(
                    onTap: () {
                      Get.to(()=> const NotificationScreen());
                      },
                    child:  const ListTile(
                      leading: SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.notifications_active,size: 30,color: Colors.black,),
                      ),
                      title: Text(
                        "Notification",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                   const Divider(),
                  InkWell(
                    onTap: () {
                      Get.to(()=> const OrderScreen());
                      Get.put(StoreOrderController1(StoreOrderRepository()));
                      Get.lazyPut(()=>StoreOrderController1(StoreOrderRepository()));
                      },
                    child:  const ListTile(
                      leading: SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.border_all,size: 30,color: Colors.black,),
                      ),
                      title: Text(
                        "My orders",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                   const Divider(),
                  InkWell(
                    onTap: () {
                      Get.to(()=>const ProfileScreen());
                      },
                    child:  const ListTile(
                      leading: SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.person,size: 30,color: Colors.black,),
                      ),
                      title: Text(
                        "My Profile",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                   const Divider(),
                  ListView.builder(
                      itemCount: controller.model.value.menuList!.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics:  const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () async {
                            late AuthCookie? authCookie;
                            authCookie = AuthDb.getAuthCookie();
                            if (!await launchUrl(
                              Uri.parse('${controller.model.value.menuList![index].url}?login_cookie=${authCookie!.cookie}app_page=true'),
                              mode: LaunchMode.externalApplication,
                            )) {
                              throw 'Could not launch ${controller.model.value.menuList![index].url}?login_cookie=${authCookie.cookie}';
                            }
                          },
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  controller.model.value.menuList![index].title
                                      .toString(),
                                  style:  const TextStyle(
                                      color: Colors.black, fontSize: 16
                                  ),
                                ),
                                leading: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: SvgPicture.network(controller.model.value.menuList![index].iconUrl.toString()),
                                ),
                              ),
                               const Divider()
                            ],
                          ),
                        );
                      }),
                  InkWell(
                    onTap: (){
                      final AuthController controller = Get.find<AuthController>();
                      loginController.usernameController.text = "";
                      loginController.passwordController.text = "";
                      controller.logout();
                    },
                    child:  const ListTile(
                      leading: SizedBox(
                        width: 30,
                        height: 30,
                        child: Icon(Icons.logout_rounded,size: 30,color: Colors.black,),
                      ),
                      title: Text(
                        "Logout",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                   const Divider(),
                ],
              ),
            );
    });
  }
}
