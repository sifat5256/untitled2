import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPController extends GetxController {
  var otpVerified = false.obs;

  void verifyOTP(String enteredOTP) {
    // Add your OTP verification logic here
    String actualOTP = "1234"; // Replace this with actual OTP sent to the user
    if (enteredOTP == actualOTP) {
      otpVerified.value = true;
      Get.snackbar('Success', 'OTP Verified Successfully');
    } else {
      Get.snackbar('Error', 'Invalid OTP. Please try again.');
    }
  }
}

class OTPScreen extends StatelessWidget {
  final OTPController otpController = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                 SizedBox(
                  height: MediaQuery.of(context).size.height*0.2,
                ),
                const Text(
                  'Enter the OTP sent to your phone',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 20.0),
                GetBuilder<OTPController>(
                  builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        4,
                            (index) => SizedBox(
                          width: 50.0,
                          child: PinCodeTextField(
                            appContext: context,
                            length: 1,
                            onChanged: (value) {},
                            onCompleted: (value) {
                              // Assuming each field has only one digit
                              if (index == 3) {
                               // otpController.verifyOTP(controller.text);
                              } else {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 50,
                              fieldWidth: 40,
                              activeFillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to next screen if OTP is verified
                      if (otpController.otpVerified.value) {
                        // Replace the next screen route
                        // Get.to(() => NextScreen());
                      } else {
                        Get.snackbar('Error', 'Please verify OTP first');
                      }
                    },
                    child: const Text('Verify OTP',style: TextStyle(
                      fontSize: 25
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
