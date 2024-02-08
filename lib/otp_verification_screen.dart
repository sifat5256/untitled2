import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  final TextEditingController otpController = TextEditingController();

  void verifyOTP(String enteredOTP) {
    // Simulate OTP verification logic
    if (enteredOTP == "1234") {
      Get.snackbar("Success", "OTP Verified Successfully");
    } else {
      Get.snackbar("Error", "Invalid OTP");
    }
  }
}

class OTPScreen extends StatelessWidget {
  final OTPController otpController = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PinCodeTextField(
                appContext: context,
                controller: otpController.otpController,
                length: 4,
                onChanged: (value) {
                  // Called when user changes the OTP value
                  // You can perform validation or any other action here
                },
                onCompleted: otpController.verifyOTP,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.grey[200],
                  inactiveFillColor: Colors.grey[200],
                  selectedFillColor: Colors.grey[200],
                ),
                animationType: AnimationType.fade,
                animationDuration: Duration(milliseconds: 300),
                textStyle: TextStyle(fontSize: 20),
                enableActiveFill: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
