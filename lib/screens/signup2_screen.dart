import 'package:e_commerce_app/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'new_nav_bar.dart';
import 'package:http/http.dart' as http;
class signup2_screen extends StatefulWidget {
  const signup2_screen({Key? key}) : super(key: key);

  @override
  State<signup2_screen> createState() => _signup2_screenState();
}


class _signup2_screenState extends State<signup2_screen> {

   TextEditingController username = TextEditingController();
   TextEditingController email = TextEditingController();
   TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

   SignUp(String Username, String Email, String Password) async {
     Map<String, dynamic> map;
     map = {
       '__api_key__' : "hi,-its-eevee. I can do wonderful things in api creation.",
       'username' : Username,
       'email' : Email,
       "password" : Password,
     };

     http.Response response = await http.post(
       Uri.parse('http://ecommerce.api.mulum.pk/regiter_user.php'),
       body: map,
     );
     print(response.body);
     // final newsuser = UserModel(
     //   uid: json.decode(response.body)['user']["uid"],
     //   name: user.name,
     //   number: user.number,
     //   email: user.email,
     //   password: user.password,
     //   country: user.country,
     // );
     // _items.add(newsuser);
     // notifyListeners();
     // print(json.decode(response.body)['statusMsg']);
     // print(json.decode(response.body)['statusCode']);
     // print(json.decode(response.body)['data']);
     // print("This is the User id:");
     // print(json.decode(response.body)['data']["_id"]);
     // if (json.decode(response.body)['statusCode'] == 200){
     //
     // }
     // return json.decode(response.body)['statusCode'] == 200 ? "Ticket add succecc fully" : "Some thing went wrong";
     // notifyListeners();
   }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.h, bottom: 3.h),
                    child: Center(child: Image.asset("assets/Circle.png", height: 15.h,width: 30.w,)),
                  ),
                  Text("Welcome,", style: GoogleFonts.poppins(
                    fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.w600
                  ),),
                  Text("SIGN UP", style: GoogleFonts.poppins(
                      fontSize: 22.sp, color: primaryColor, fontWeight: FontWeight.w600
                  ),),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          height: 10.h,
                          // width: 40.w,
                          child: Center(
                            child: TextFormField(
                              controller: username,
                              style: TextStyle(color: Colors.black,fontSize: 16.sp),
                              // textFieldController: controller,
                              maxLength: 20,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                counterText: "",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width:0.3.sp),
                                  borderRadius: BorderRadius.circular(10.0.sp),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.5.sp,
                                    color: primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0.sp),
                                ),
                                contentPadding: EdgeInsets.only(bottom: 0, left: 3.w, top: 10.sp),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'First Name',
                                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please enter the user name';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Container(
                          height: 10.h,
                          // width: 40.w,
                          child: Center(
                            child: TextFormField(
                              controller: email,
                              style: TextStyle(color: Colors.black,fontSize: 16.sp),
                              // textFieldController: controller,
                              maxLength: 20,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                counterText: "",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width:0.3.sp),
                                  borderRadius: BorderRadius.circular(10.0.sp),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.5.sp,
                                    color: primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0.sp),
                                ),
                                contentPadding: EdgeInsets.only(bottom: 0, left: 3.w, top: 10.sp),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'email',
                                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please enter the email';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Container(
                          height: 10.h,
                          child: Center(
                            child: TextFormField(
                              controller: password,
                              style: TextStyle(color: Colors.black,fontSize: 16.sp),
                              // textFieldController: controller,
                              maxLength: 20,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                counterText: "",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black,width:0.3.sp),
                                  borderRadius: BorderRadius.circular(10.0.sp),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0.5.sp,
                                    color: primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0.sp),
                                ),
                                contentPadding: EdgeInsets.only(bottom: 0, left: 3.w, top: 10.sp),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                              ),
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Please enter the password';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        // Container(
                        //   height: 10.h,
                        //   child: Center(
                        //     child: TextFormField(
                        //       style: TextStyle(color: Colors.black,fontSize: 16.sp),
                        //       // textFieldController: controller,
                        //       maxLength: 20,
                        //       cursorColor: Colors.black,
                        //       decoration: InputDecoration(
                        //         counterText: "",
                        //         enabledBorder: OutlineInputBorder(
                        //           borderSide: BorderSide(color: Colors.black,width:0.3.sp),
                        //           borderRadius: BorderRadius.circular(10.0.sp),
                        //         ),
                        //         errorBorder: UnderlineInputBorder(
                        //           borderSide: BorderSide(
                        //             width: 0.5.sp,
                        //             color: primaryColor,
                        //           ),
                        //           borderRadius: BorderRadius.circular(10.0.sp),
                        //         ),
                        //         contentPadding: EdgeInsets.only(bottom: 0, left: 3.w, top: 10.sp),
                        //         filled: true,
                        //         fillColor: Colors.white,
                        //         hintText: 'Confirm Password',
                        //         hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                        //       ),
                        //       validator: (text) {
                        //         if (text == null || text.isEmpty) {
                        //           return 'Please enter the confirm password';
                        //         }
                        //         return null;
                        //       },
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      SignUp(username.text, email.text, password.text);
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new_nav_bar()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 22.h),
                      child: Container(
                        height: 7.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child: Center(child: Text("DONE", style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
