import 'package:e_commerce_app/screens/product_detail.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
// import 'package:ed_screen_recorder/ed_screen_recorder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // EdScreenRecorder? screenRecorder;
  Map<String, dynamic>? _response;
  bool inProgress = false;
  String? userId = null;

  get_UID() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    userId = prefs.getString("UID");
    // print("The sahre-pref token is ${JWDToken}");
  }
  didChangeDependencies() async {
    await get_UID();
    print(userId);
    print(userId);
    print(userId);
    print(userId);
    super.didChangeDependencies();
  }
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   switch (state) {
  //     case AppLifecycleState.resumed:
  //       print("app in resumed");
  //       break;
  //     case AppLifecycleState.inactive:
  //       print("app in inactive");
  //       break;
  //     case AppLifecycleState.paused:
  //       print("app in paused");
  //       break;
  //     case AppLifecycleState.detached:
  //       print("app in detached");
  //       break;
  //   }
  // }


  // VideoPlayerController _controller = VideoPlayerController.network(
  //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');

  // Set_Video() async {
  //   print(userId);
  //   print(userId);
  //   print(userId);
  //   print(userId);
  //   var file = File((_response?['file'] as File).path);
  //   var fileName = file.path.split('/').last;
  //   FormData formData = FormData.fromMap({
  //     '__api_key__' : "hi,-its-eevee. I can do wonderful things in api creation.",
  //       'user_uid' : userId,
  //     "video": await MultipartFile.fromFile(file.path, filename: fileName),
  //   });
  //   Response response;
  //   var dio = Dio();
  //
  //   response = await dio.post('http://ecommerce.api.mulum.pk/add_video.php', data: formData);
  //   print(response.data);
  // }


  @override
  // void initState() {
  //   super.initState();
  //   screenRecorder = EdScreenRecorder();
  //   _controller = VideoPlayerController.network(
  //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
  //     ..initialize().then((_) {
  //       // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
  //       setState(() {});
  //     });
  // }

  // Future<void> startRecord({required String fileName}) async {
  //   Directory? tempDir = await getApplicationDocumentsDirectory();
  //   String? tempPath = tempDir.path;
  //   try {
  //     var startResponse = await screenRecorder?.startRecordScreen(
  //       fileName: "Eren",
  //       //Optional. It will save the video there when you give the file path with whatever you want.
  //       //If you leave it blank, the Android operating system will save it to the gallery.
  //       dirPathToSave: tempPath,
  //       audioEnable: false,
  //     );
  //     setState(() {
  //       _response = startResponse;
  //     });
  //     try {
  //       screenRecorder?.watcher?.events.listen(
  //             (event) {
  //           log(event.type.toString(), name: "Event: ");
  //         },
  //         onError: (e) => kDebugMode ? debugPrint('ERROR ON STREAM: $e') : null,
  //         onDone: () => kDebugMode ? debugPrint('Watcher closed!') : null,
  //       );
  //     } catch (e) {
  //       kDebugMode ? debugPrint('ERROR WAITING FOR READY: $e') : null;
  //     }
  //   } on PlatformException {
  //     kDebugMode ? debugPrint("Error: An error occurred while starting the recording!") : null;
  //   }
  // }
  //
  // Future<void> stopRecord() async {
  //   try {
  //     var stopResponse = await screenRecorder?.stopRecord();
  //     setState(() {
  //       _response = stopResponse;
  //     });
  //   } on PlatformException {
  //     kDebugMode ? debugPrint("Error: An error occurred while stopping recording.") : null;
  //   }
  // }
  //
  // Future<void> pauseRecord() async {
  //   try {
  //     await screenRecorder?.pauseRecord();
  //   } on PlatformException {
  //     kDebugMode ? debugPrint("Error: An error occurred while pause recording.") : null;
  //   }
  // }
  //
  // Future<void> resumeRecord() async {
  //   try {
  //     await screenRecorder?.resumeRecord();
  //   } on PlatformException {
  //     kDebugMode ? debugPrint("Error: An error occurred while resume recording.") : null;
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: NavigationBarWidget(),
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 4.h, right: 6.w),
                      height: 8.h,
                      width: 16.w,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100.sp)),
                      child: Image.asset("assets/avatar.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Text(
                      "Welcome, Mr Usman",
                      style: GoogleFonts.poppins(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Text("File: ${(_response?['file'] as File?)?.path}"),
                  // Text("Status: ${(_response?['success']).toString()}"),
                  // Text("Event: ${_response?['eventname']}"),
                  // Text("Progress: ${(_response?['progressing']).toString()}"),
                  // Text("Message: ${_response?['message']}"),
                  // Text("Video Hash: ${_response?['videohash']}"),
                  // Text("Start Date: ${(_response?['startdate']).toString()}"),
                  // Text("End Date: ${(_response?['enddate']).toString()}"),
                  // ElevatedButton(onPressed: () => startRecord(fileName: "eren"), child: const Text('START RECORD')),
                  // ElevatedButton(onPressed: () => resumeRecord(), child: const Text('RESUME RECORD')),
                  // ElevatedButton(onPressed: () => pauseRecord(), child: const Text('PAUSE RECORD')),
                  // ElevatedButton(onPressed: () async {
                  //   await stopRecord();
                  //   await Set_Video();
                  //   // setState((){
                  //   //   _controller = VideoPlayerController.file(
                  //   //       _response?['file'] as File);
                  //   // });
                  //   }, child: const Text('STOP RECORD')),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Text(
                      "A one click shopping place where you find all your \nfavourite brands.",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  // Center(
                  //   child: _controller.value.isInitialized
                  //       ? AspectRatio(
                  //     aspectRatio: _controller.value.aspectRatio,
                  //     child: VideoPlayer(_controller),
                  //   )
                  //       : Container(height: 10.h, width: 50.w,),
                  // ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       _controller.value.isPlaying
                  //           ? _controller.pause()
                  //           : _controller.play();
                  //     });
                  //   },
                  //   child: Icon(
                  //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  //   ),
                  // ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text("Watches",
                    style: GoogleFonts.poppins(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Container(
                      height: 25.h,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.red[200],
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Container(
                                height: 25.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(10.sp),
                                        child: Image.asset("assets/watch 1.jpg",
                                          fit: BoxFit.fitWidth,
                                          width: 80.w,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Text("Bags",
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> product_detail()));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.h),
                      child: Container(
                        height: 25.h,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.red[200],
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.only(right: 5.w),
                                child: Container(
                                  height: 25.h,
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10.sp),
                                          child: Image.asset("assets/bag 1.jpg",
                                            fit: BoxFit.fitWidth,
                                            width: 80.w,
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Text("Bags",
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Container(
                      height: 25.h,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.red[200],
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Container(
                                height: 25.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(10.sp),
                                        child: Image.asset("assets/bag 2.JPG",
                                          fit: BoxFit.fitWidth,
                                          width: 80.w,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Text("Watches",
                    style: GoogleFonts.poppins(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Container(
                      height: 25.h,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.red[200],
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Container(
                                height: 25.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(10.sp),
                                        child: Image.asset("assets/watch 1.jpg",
                                          fit: BoxFit.fitWidth,
                                          width: 80.w,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Text("Bags",
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Container(
                      height: 25.h,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.red[200],
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Container(
                                height: 25.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(10.sp),
                                        child: Image.asset("assets/bag 1.jpg",
                                          fit: BoxFit.fitWidth,
                                          width: 80.w,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Text("Clothing",
                      style: GoogleFonts.poppins(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Container(
                      height: 25.h,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.red[200],
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 5.w),
                              child: Container(
                                height: 25.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                        BorderRadius.circular(10.sp),
                                        child: Image.asset("assets/new arrival 1.jpg",
                                          fit: BoxFit.fitWidth,
                                          width: 80.w,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          }),
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
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }
}
