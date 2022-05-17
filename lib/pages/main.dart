import 'package:flutter/material.dart';
import 'package:flutter_pages/pages/error_screen_list.dart';
import 'package:flutter_pages/pages/login.dart';
import 'package:flutter_pages/pages/otp_page.dart';
import 'package:flutter_pages/providers/dark_theme_provider.dart';
import 'package:provider/provider.dart';
class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pages List'),
      ),
      body: Scaffold(
        body: ListView(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Dark Mode: "),
                Switch(
                    value: themeChange.darkTheme,
                    activeColor:Colors.green,
                    onChanged: (bool? value) {
                      themeChange.darkTheme = value!;
                    }
                ),
              ],
            ),

            InkWell(
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const ListTile(
                title: Text('Login Page'),
              ),
            ),

            InkWell(
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OtpPage()),
                );
              },
              child: const ListTile(
                title: Text('OTP Page'),
              ),
            ),

            InkWell(
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ErrorScreenList()),
                );
              },
              child: const ListTile(
                title: Text('Error Pages'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
