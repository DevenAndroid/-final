import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dinelah_vendor/constraints/colors.dart';
import 'package:dinelah_vendor/data/local/auth_db.dart';
import 'package:dinelah_vendor/data/models/user/user.dart';
import 'package:dinelah_vendor/model/model_order_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

String? messageText;

class UserChatScreen extends StatefulWidget {
  const UserChatScreen({Key? key}) : super(key: key);

  @override
  UserChatScreenState createState() => UserChatScreenState();
}

class UserChatScreenState extends State<UserChatScreen> {
  final chatMsgTextController = TextEditingController();


  AuthCookie? authCookie = AuthDb.getAuthCookie();

  Rx<User> user = User().obs;
  late ModelOrderDetails receiverDetails;
  var chatNode;

  @override
  initState() {
    super.initState();
    user.value = authCookie!.user!;
    print("User value${user.value}");
    receiverDetails = Get.arguments[0];
    print("User value 12${jsonEncode(receiverDetails)}");
    getUser();
  }

  Future<void> getUser() async {
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // user.value = User.fromJson(jsonDecode(pref.getString('user')!));
    if (user.value.id! < int.parse(receiverDetails.response!.customerDetails!.id.toString())) {
      chatNode = '${user.value.id}-${receiverDetails.response!.customerDetails!.id.toString()}';
      print("User value$chatNode");
    } else {
      print("User value$chatNode");
      chatNode = '${receiverDetails.response!.customerDetails!.id.toString()}-${user.value.id}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppTheme.colorBackground,
      // appBar: backAppBarRed('Chat'),
      appBar: AppBar(
        title: const Text("Chat",style: TextStyle(color: Colors.white),),
      ),
      body:
      Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            user == null && chatNode == '' ?
            const SizedBox.shrink() :
            user == null && chatNode == ''
                ? const SizedBox.shrink()
                :
            ChatStream(user.value, chatNode),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              // decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      elevation: 5,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 8.0, top: 2, bottom: 2),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          minLines: 1,
                          maxLines: 4,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(16),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              enabled: true),
                          onChanged: (value) {
                            messageText = value;
                          },
                          controller: chatMsgTextController,
                          //decoration: kMessageTextFieldDecoration,
                        ),
                      ),
                    ),
                  ),
                  MaterialButton(
                      shape: const CircleBorder(),
                      color: colorSecondary,
                      onPressed: () {
                        if (chatMsgTextController.text.isNotEmpty) {
                          firestore.collection('messages')
                              .doc(Get.arguments[2].toString())
                              .collection(chatNode)
                              .add({
                            'isRead': false,
                            'receiverId': receiverDetails.response!.customerDetails!.id.toString(),
                            'receiverName': receiverDetails.response!.customerDetails!.name.toString(),
                            'receiverPhoto': receiverDetails.response!.customerDetails!.image.toString(),
                            'senderId': user.value.id.toString(),
                            'senderName': user.value.username.toString(),
                            'senderPhoto': user.value.profileImage.toString(),
                            'message': messageText,
                            'senderUserRole': "????seller",
                            'receiverUserRole': Get.arguments[1].toString(),
                            'user': true,
                            'timestamp': DateTime.now().millisecondsSinceEpoch,
                          });
                        }
                        print("Message sent::");
                        print("Message sent::"
                            "${receiverDetails.response!.customerDetails!.id.toString()}\n"
                            "${receiverDetails.response!.customerDetails!.name.toString()}\n"
                            "${receiverDetails.response!.customerDetails!.image.toString()}\n"
                            "${user.value.id.toString()}\n"
                            "${user.value.username.toString()}\n"
                            "${user.value.profileImage.toString()}}");
                        chatMsgTextController.clear();
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

class ChatStream extends StatelessWidget {
  User? user;
  String chatNode;

  ChatStream(this.user, this.chatNode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: firestore.collection('messages').doc(Get.arguments[2].toString()).collection(chatNode).orderBy('timestamp').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          final messages = snapshot.data!.docs.reversed;
          // showToast(snapshot.data!.docs.toString());
          List<MessageBubble> messageWidgets = [];
          for (var messageInstance in messages) {
            final item = messageInstance;
            final msgText = item['message'].toString(); //.data['text'];
            final receiverId = item['receiverId'].toString(); //.data['text'];
            final receiverName =
            item['receiverName'].toString(); //.data['text'];
            final receiverPhoto =
            item['receiverPhoto'].toString(); //.data['text'];
            final senderId = item['senderId'].toString(); //.data['text'];
            final senderName = item['senderName'].toString(); //.data['text'];
            final senderPhoto = item['senderPhoto'].toString(); //.data['text'];
            final message = item['message'].toString(); //.data['text'];
            final senderUserRole =
            item['senderUserRole'].toString(); //.data['text'];
            final receiverUserRole =
            item['receiverUserRole'].toString(); //.data['text'];
            final user = item['user'].toString(); //.data['text'];
            final timestamp = item['timestamp'].toString();
            //message.data().toString();//.data['sender'];
            // final msgSenderEmail = message.data['senderemail'];
            // final currentUser = loggedInUser!.displayName;

            // print('MSG'+msgSender + '  CURR'+currentUser);
            final msgBubble = MessageBubble(
                false,
                receiverId,
                receiverName,
                receiverPhoto,
                senderId,
                senderName,
                senderPhoto,
                message,
                senderUserRole,
                receiverUserRole,
                false,
                timestamp);
            messageWidgets.add(msgBubble);
          }
          return Expanded(
            child: ListView(
              reverse: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              children: messageWidgets,
            ),
          );
        } else {
          return const SizedBox(
            height: 500,
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.deepOrange,
                // color: AppTheme.primaryColor,
              ),
            ),
          );
        }
      },
    );
  }
}

class MessageBubble extends StatefulWidget {
  var isRead;
  var receiverId;
  var receiverName;
  var receiverPhoto;
  var senderId;
  var senderName;
  var senderPhoto;
  var message;
  var senderUserRole;
  var receiverUserRole;
  var user;
  var timestamp;

  MessageBubble(
      this.isRead,
      this.receiverId,
      this.receiverName,
      this.receiverPhoto,
      this.senderId,
      this.senderName,
      this.senderPhoto,
      this.message,
      this.senderUserRole,
      this.receiverUserRole,
      this.user,
      this.timestamp, {Key? key}
      ) : super(key: key);

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  RxString id = ''.obs;

  AuthCookie? authCookie = AuthDb.getAuthCookie();

  Rx<User> user = User().obs;
  late ModelOrderDetails receiverDetails;
  var chatNode;

  @override
  initState() {
    super.initState();
    user.value = authCookie!.user!;
    getUser();
  }

  Future<void> getUser() async {
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // user.value = User.fromJson(jsonDecode(pref.getString('user')!));
    id.value = user.value.id.toString();
    print ('USER ID :: '+id.value.toString());
  }

  @override
  Widget build(BuildContext context) {
    if (id.value != null && id.value == widget.receiverId ||
        id.value == widget.receiverId) {
      widget.user = false;
    } else {
      widget.user = true;
    }
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment:
        widget.user ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.message,
              style: const TextStyle(
                  fontSize: 13, fontFamily: 'Poppins', color: Colors.white),
            ),
          ),
          Material(
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(50),
              topLeft: widget.user
                  ? const Radius.circular(50)
                  : const Radius.circular(0),
              bottomRight: const Radius.circular(50),
              topRight: widget.user
                  ? const Radius.circular(0)
                  : const Radius.circular(50),
            ),
            color: widget.user ? colorSecondary : Colors.black,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                // widget.receiverId,
                widget.message,
                style: TextStyle(
                  color: widget.user ? Colors.white : Colors.blue,
                  fontFamily: 'Poppins',
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}