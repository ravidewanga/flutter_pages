import 'package:flutter/material.dart';
import 'error_screens/10_connection_lost.dart';
import 'error_screens/11_broken_link.dart';
import 'error_screens/12_artical_not_found.dart';
import 'error_screens/13_no_space.dart';
import 'error_screens/14_no_result_found.dart';
import 'error_screens/15_payment_faild.dart';
import 'error_screens/16_time_error.dart';
import 'error_screens/17_location_error.dart';
import 'error_screens/18_router_offline.dart';
import 'error_screens/1_no_connection.dart';
import 'error_screens/20_no_file.dart';
import 'error_screens/21_camera_access.dart';
import 'error_screens/2_404_error.dart';
import 'error_screens/3_something_went_wrong.dart';
import 'error_screens/4_file_not_found.dart';
import 'error_screens/6_error.dart';
import 'error_screens/7_error_2.dart';
import 'error_screens/8_404_error_2.dart';
import 'error_screens/9_location_access.dart';
import 'error_screens/19_connection_faild.dart';
import 'error_screens/5_something_wrong.dart';

class ErrorScreenList extends StatefulWidget {
  const ErrorScreenList({Key? key}) : super(key: key);

  @override
  State<ErrorScreenList> createState() => _ErrorScreenListState();
}

class _ErrorScreenListState extends State<ErrorScreenList> {

  List<Widget> screenList = [
    NoConnectionScreen(),
    Error404Screen(),
    Error404Screen2(),
    SomethingWentWrongScreen(),
    FileNotFoundScreen(),
    SomethingWrongScreen(),
    ErrorScreen(),
    Error2Screen(),
    LocationAccessScreen(),
    ConnectionLostScreen(),
    BrokenLinkScreen(),
    ArticleNotFoundScreen(),
    NoSpaceScreen(),
    NoResultFoundScreen(),
    PaymentFaildScreen(),
    TimeErrorScreen(),
    LocationErrorScreen(),
    RouterOfflineScreen(),
    ConnectionFaildScreen(),
    NoFileScreen(),
    CameraAccessScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: screenList.length,
        itemBuilder: (context, index) {
          return screenList[index];
        }
     );
  }
}
