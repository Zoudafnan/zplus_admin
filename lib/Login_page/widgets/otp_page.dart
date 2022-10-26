import 'package:admian_app/Login_page/widgets/otp_text_box.dart';
import 'package:admian_app/constant_widgets/custom_button_red.dart';
import 'package:admian_app/constants/bold_text.dart';
import 'package:admian_app/constants/regular_text.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2;
    final height = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // First Container
          Container(
            height: width / 1.5,
            width: width / 1.5,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
              )
            ]),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "OTP Verification",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    const SizedBox(height: 15),
                    RegularText(
                      text: "Please Enter The Otp",
                      color: Colors.black,
                      size: 14,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Text Filed
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        OtpText(),
                        OtpText(),
                        OtpText(),
                        OtpText(),
                        OtpText(),
                        OtpText(),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // Continue Button
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: CustomButtonRed(
                          inputText: "Continue",
                          height: 40,
                          width: width / 1.5,
                          onPressed: () {
                            Navigator.pushNamed(context, '/dashboard');
                          },
                          font: 15),
                    )
                  ]),
            ),
          ),
          // Second Container
          Stack(
            children: [
              Container(
                height: width / 1.5,
                width: width / 1.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    )
                  ],
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://t3.ftcdn.net/jpg/03/24/73/92/360_F_324739203_keeq8udvv0P2h1MLYJ0GLSlTBagoXS48.jpg')),
                ),
              ),
              Container(
                height: width / 1.5,
                width: width / 1.5,
                color: Colors.black.withOpacity(0.5),
                child: Center(
                    child: BoldText(
                  text: "Z Plus",
                  color: Colors.white,
                )),
              )
            ],
          )
        ],
      )),
    );
  }
}
