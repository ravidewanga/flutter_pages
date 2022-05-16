import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(50),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset('assets/images/78126-secure-login.gif',width: 250),
              ),

              const SizedBox(height: 50),

              TextFormField(
                decoration:const InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              TextFormField(
                obscureText:true,
                decoration:const InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 5),
                    child: InkWell(
                      onTap: (){},
                      child: const Text("Forgot Password",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // <-- Radius
                  ),
                ),
                child: const Text('Login'),
              ),

              const SizedBox(height: 20),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  InkWell(
                    onTap: (){},
                    child: const Text('Sign Up',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
