import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import '../../../constraints/colors.dart';
import '../../../controller/auth_controller.dart';
import 'change_password_repository.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController newPassword =TextEditingController();
  TextEditingController oldPassword =TextEditingController();
  bool obscure1 = true;
  bool obscure2 = true;
  bool obscure3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 45,
        leading: InkWell(
          child: Container(
              padding: const EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Image.asset('assets/images/back-icon.png',scale: 1.2,)),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        title: const Text('Change Password'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: colorSecondary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        top: 65,
                        bottom: 30 ),
                    child: Image.asset("assets/icons/lock_icon.png")
                ),
                const Text('Change Your Password',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.only(top: 20,bottom: 20),
                  width: MediaQuery.of(context).size.width*.9,
                  child: const Text('You can change yours password here',
                    style: TextStyle(color: Colors.white,),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextFormField(
                    controller: oldPassword,
                    style: const TextStyle(color: colorSecondary),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Password required',),
                    ]),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      errorStyle: const TextStyle(color: Colors.white),
                      hintText: 'Old Password',
                      contentPadding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                      hintStyle: const TextStyle(
                          color: colorSecondary,fontSize: 14
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(width: 1,color: Colors.white54)
                      ),
                      suffixIcon: InkWell(
                        onTap: (){
                          setState(() {
                            obscure1 = !obscure1;
                          });
                        },
                        child: obscure1?
                        const Icon(Icons.visibility_off_outlined,size: 18,color: colorSecondary,):
                        const Icon(Icons.visibility_outlined,size: 18,color: colorSecondary,),
                      ),
                    ),
                    obscureText: obscure1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18,top: 15),
                  child: TextFormField(
                    controller: newPassword,
                    style: const TextStyle(color: colorSecondary),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Password required',),
                      MinLengthValidator(6, errorText: 'Password must contain minimum 6 characters'),
                    ]),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      errorStyle: const TextStyle(color: Colors.white),
                      hintText: 'New Password',
                      contentPadding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                      hintStyle: const TextStyle(
                          color: colorSecondary,fontSize: 14
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(width: 1,color: Colors.white54)
                      ),
                      suffixIcon: InkWell(
                        onTap: (){
                          setState(() {
                            obscure2 = !obscure2;
                          });
                        },
                        child: obscure2?
                        const Icon(Icons.visibility_off_outlined,size: 18,color: colorSecondary,):
                        const Icon(Icons.visibility_outlined,size: 18,color: colorSecondary),
                      ),
                    ),
                    obscureText: obscure2,
                  ),
                ),
                TextFormField(
                  validator: (val){
                    if(val!.isEmpty){
                      return 'Confirm password required';
                    }
                    return MatchValidator(errorText: 'Confirm password does not matching').validateMatch(val, newPassword.text);
                  },
                  style: const TextStyle(color: colorSecondary),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Confirm Password',
                    errorStyle: const TextStyle(color: Colors.white),
                    contentPadding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                    hintStyle: const TextStyle(
                        color: colorSecondary,fontSize: 14
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(width: 1,color: Colors.white54)
                    ),
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          obscure3 = !obscure3;
                        });
                      },
                      child: obscure3?
                      const Icon(Icons.visibility_off_outlined,size: 18,color: colorSecondary):
                      const Icon(Icons.visibility_outlined,size: 18,color: colorSecondary),
                    ),
                  ),
                  obscureText: obscure3,
                ),
                Container(
                    margin: const EdgeInsets.only(top: 25,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                    ),
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height*.08,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 0
                        ),
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            if (oldPassword.text == newPassword.text) {
                              Get.snackbar("Passwords Match", "Old and New Passwords matching",backgroundColor: Colors.white,colorText: colorSecondary);
                            }else if (oldPassword.text != newPassword.text) {
                              changePassword(oldPassword.text, newPassword.text, context).then((value) {
                                if (value.status == true) {
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.message)));
                                  final AuthController controller = Get.find<AuthController>();
                                  controller.usernameController.text = "";
                                  controller.passwordController.text = "";
                                  controller.logout();
                                }
                              });
                            }
                          }
                        },
                        child: const Text('UPDATE NOW',style: TextStyle(color: colorSecondary,
                            fontSize: 16,fontWeight: FontWeight.w600)
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
