




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../features/landing/presentation/screens/landing_page.dart';
import '../../../../../shared/utill/app_color_resources.dart';
import '../../../../../shared/utill/app_text_style.dart';
import '../../../../../shared/widgets/common_widget/app_custom_button.dart';
import '../widgets/custom_textform_filed.dart';
import '../widgets/textformfiled_validator.dart';



class SignInPage extends StatefulWidget {
  static const String routeName = '/sign_in_page';
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passWordTextEditingController = TextEditingController();
  bool isChecked = false;



  @override
  void dispose(){
    phoneTextEditingController.dispose();
    passWordTextEditingController.dispose();
    super.dispose();

  }



  @override
  Widget build(BuildContext context) {

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xff069DD8);
      }
      return Color(0xff565656);
    }



    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login_backend.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 133.h),
              Image.asset('assets/images/img.png',width: 176.w,height: 40.h,),


              ///......login container...........................................

              Padding(
                padding: EdgeInsets.only(left: 12.w,right: 12.w,top:24.h ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColorResource.appWhiteColor,
                    boxShadow:[
                      BoxShadow(
                        color: Color(0xff000000).withOpacity(0.12),
                        spreadRadius: 2,
                        blurRadius: 18,
                        offset: Offset(0, 3),
                      ),
                    ] ,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(top: 16.0.h,left:12.w,right: 12.w ,bottom: 16.h),
                    child: Column(
                      children: [
                        Text('Sign In', style: myStyleInter(22.sp,AppColorResource.primaryTextColor,FontWeight.w700,0.3),),
                        SizedBox(height: 6.h,),
                        Text('Welcome to seller login ', style: myStyleInter(16.sp,AppColorResource.primaryTextColor,FontWeight.w500,0.3),),
                        SizedBox(height: 12.h,),
                        const Divider(height: 1,color: AppColorResource.dividerColor,),
                        SizedBox(height: 22.h,),

                        ///........Textform filed for Mobile and password......

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ///...............phone number textform filed.....................
                                Text('Mobile', style: myStyleInter(14.sp,AppColorResource.primaryTextColor,FontWeight.w400,),),
                                SizedBox(height: 8.h,),
                                CustomTextFormFiled(
                                  textEditingController: phoneTextEditingController,
                                  hinText: 'Enter mobile number',
                                  keyboardType: TextInputType.number,
                                  textFormFiledValidator: (value ) {
                                    if (value == null || value.isEmpty) {
                                      return TextformFiledValidator.validatePhone(phoneTextEditingController.text);
                                    }
                                    return TextformFiledValidator.validatePhone(value);
                                  },

                                  onChanged: (value) {
                                    // Perform live validation here using the provided validation function
                                    setState(() {
                                      _formKey.currentState!.validate();
                                    });


                                  },
                                ),




                                ///...............password textformfiled...........................
                                SizedBox(height: 20.h,),
                                Text('Password', style: myStyleInter(14.sp,AppColorResource.primaryTextColor,FontWeight.w400,),),
                                SizedBox(height: 8.h,),
                                CustomTextFormFiled(
                                  textEditingController: passWordTextEditingController,
                                  hinText: 'Enter your password',
                                  keyboardType: TextInputType.text,
                                  textFormFiledValidator: (value ) {
                                    if (value == null || value.isEmpty) {
                                      return TextformFiledValidator.validatePassword(passWordTextEditingController.text);
                                    }
                                    return TextformFiledValidator.validatePassword(value);
                                  },
                                  onChanged: (String ) {
                                    _formKey.currentState!.validate();
                                  },
                                ),
                                SizedBox(height: 10.h,),




                                ///...............checkbox............................................

                                Row(
                                  children: [
                                    SizedBox(
                                      width: 24.w,
                                      height: 24.h,
                                      child: Checkbox(side: MaterialStateBorderSide.resolveWith((Set<MaterialState> states) {
                                        if (states.contains(MaterialState.selected)) {
                                          return  BorderSide(width: 2, color: Color(0xff565656));
                                        }
                                        return  BorderSide(width: 1, color: Color(0xff565656));
                                      },
                                      ),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.r)),
                                        checkColor: Colors.white,
                                        fillColor: MaterialStateProperty.resolveWith(getColor),
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          }
                                          );
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 10.w,),
                                    Text('Remember Me',style:myStyleInter(14.sp,Color(0Xff989898),FontWeight.w500,0.3 )),
                                    const Spacer(),
                                    TextButton(
                                        onPressed: (){},
                                        child: Text('Forgot password ?',style:myStyleInter(12.sp,Color(0xff0177CD),FontWeight.w600,0.3 ))),
                                  ],
                                ),
                                SizedBox(height: 36.h,),

                                ///...............Sign in Button........................................
                                AppCustomButton(
                                    height: 48.h,
                                    width: double.infinity,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                    title: 'Sign In',
                                    onPressed: (){
                                      if(_formKey.currentState!.validate()){
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Processing Data')),
                                        );
                                        //Navigator.pushNamed(context, LandingPage.routeName);
                                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                            LandingPage ()), (Route<dynamic> route) => false);
                                      }
                                    })
                              ],
                            ),
                          ),
                        ),



                        ///.............sign up text  button...............................
                        SizedBox(height: 8.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Become a seller',style:myStyleInter(14.sp, AppColorResource.primaryTextColor,FontWeight.w500) ,),

                            TextButton(
                                onPressed: (){
                                  // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                                  //     SignUpPage()), (Route<dynamic> route) => false);
                                },
                                child: Text('Sign Up',style: TextStyle(fontSize: 14.sp,fontWeight:FontWeight.w700,color: Color(0xFF0000FF,),
                                  decoration: TextDecoration.underline,

                                ),)),

                          ],
                        )





                      ],
                    ),
                  ),
                ),
              ),










            ],
          ),
        ) ,
      ),
    );
  }
}
