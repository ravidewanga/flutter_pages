import 'package:flutter/material.dart';
class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final GlobalKey<FormState> _otpFormKey = GlobalKey<FormState>();
  dynamic pin1;
  dynamic pin2;
  dynamic pin3;
  dynamic pin4;

  otpSubmit(){
    if (!_otpFormKey.currentState!.validate()) {
      return;
    }else{
      _otpFormKey.currentState!.save();
      print('otp is: $pin1 $pin2 $pin3 $pin4');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/illustration-3.png',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Form(
                  key: _otpFormKey,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 85,
                            width: 50,
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: TextFormField(
                                onSaved: (value) => pin1 = value,
                                autofocus: true,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                showCursor: false,
                                readOnly: false,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  counter: const Offstage(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 2, color: Colors.black12),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 2, color: Colors.purple),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 85,
                            width: 50,
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: TextFormField(
                                onSaved: (value) => pin2 = value,
                                autofocus: true,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                showCursor: false,
                                readOnly: false,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  counter: const Offstage(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 2, color: Colors.black12),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 2, color: Colors.purple),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 85,
                            width: 50,
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: TextFormField(
                                onSaved: (value) => pin3 = value,
                                autofocus: true,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                showCursor: false,
                                readOnly: false,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  counter: const Offstage(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 2, color: Colors.black12),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 2, color: Colors.purple),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 85,
                            width: 50,
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: TextFormField(
                                onSaved: (value) => pin4 = value,
                                autofocus: true,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                showCursor: false,
                                readOnly: false,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  counter: const Offstage(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 2, color: Colors.black12),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 2, color: Colors.purple),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: otpSubmit,
                          style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              'Verify',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
