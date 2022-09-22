import 'package:flutter/material.dart';

class NoDataMessage extends StatelessWidget {
  final String? messageText;
  final double? messageTextSize;
  final double? elevationCard;
  final double? imageWidth;
  final double? imageHeight;

  const NoDataMessage(
      {Key? key,
        this.messageText,
        this.messageTextSize,
        this.elevationCard = 4,
        this.imageWidth,
        this.imageHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Card(
          elevation: elevationCard,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Image.asset(
                "assets/app/img_no_data.jpg",
                width: imageWidth,
                height: imageHeight,
                // fit: BoxFit.fill,
              ),
              Text(
                messageText.toString(),
                style: TextStyle(
                    fontSize: messageTextSize,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
