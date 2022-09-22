import 'package:flutter/material.dart';

import '../../../constraints/styles.dart';

class HasPersons extends StatefulWidget {
  final int Index;
  const HasPersons({Key? key, required this.Index}) : super(key: key);

  @override
  State<HasPersons> createState() => _HasPersonsState();
}

class _HasPersonsState extends State<HasPersons> {

  TextEditingController personType = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController baseCost = TextEditingController();
  TextEditingController min = TextEditingController();
  TextEditingController max = TextEditingController();
  TextEditingController blockCost = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // subtitle3('Person types # ${widget.Index +1}', 20 ,Colors.black.withOpacity(.8)),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            subtitle3('Enable person types', 14 ,Colors.black.withOpacity(.6)),
            const SizedBox(height: 10),
            TextFormField(
              controller: personType,
              decoration: inputDecorationFilled.copyWith(
                hintText: 'Person Type #1',
              ),
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Please enter Min Persons';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                subtitle3("Base Cost:" , 14 , Colors.black.withOpacity(.5)),
                SizedBox(width: 140,),
                subtitle3("Block Cost:" , 14 , Colors.black.withOpacity(.5)),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(child: commonTextField(baseCost, TextInputType.number, "Base cost",(value){
                  return null;
                })),
                SizedBox(width: 20,),
                Expanded(child: commonTextField(blockCost, TextInputType.number, "block cost",(value){
                  return null;
                })),
              ],
            ),
            const SizedBox(height: 15),
            subtitle3('Description', 14 ,Colors.black.withOpacity(.6)),
            const SizedBox(height: 10),
            TextFormField(
              controller: description,
              decoration: inputDecorationFilled.copyWith(
                hintText: 'Description',
              ),
              validator: (value) {
                if (value?.isEmpty == true) {
                  return 'Description';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                subtitle3("Min:" , 14 , Colors.black.withOpacity(.5)),
                SizedBox(width: 180,),
                subtitle3("Max:" , 14 , Colors.black.withOpacity(.5)),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(child: commonTextField(min, TextInputType.number, "Base cost",(value){
                  return null;
                })),
                SizedBox(width: 20,),
                Expanded(child: commonTextField(max, TextInputType.number, "block cost",(value){
                  return null;
                })),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ],
    );
  }

  commonTextField(TextEditingController controller,TextInputType textInputType, String hintText, FormFieldValidator<String>? validator){
    return TextFormField(
        controller: controller,
        keyboardType: textInputType,
        decoration: inputDecorationFilled.copyWith(
          hintText: hintText,
        ),
        validator: validator
    );
  }

  subtitle3(String text, double fontSize, Color textColor ) {
    return  Text(
      text,
      style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold,color: textColor),
    );
  }
}
