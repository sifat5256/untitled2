import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileSelectionScreen extends StatelessWidget {
  ProfileSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                child: const Center(child: Text("Here Will be a logo")),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                child: Column(
                  children: [
                    const Text(
                      "Here a header Text",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      "Here a body text write something",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildOutlinedButton("Service Seeker", Colors.blue),
                        buildOutlinedButton("Service Provider", Colors.blue),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    buildOutlinedButton("Sign In", Colors.grey.shade300),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Quick Links",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              buildQuickLink("Help Line", Icons.phone, () {}),
                              const SizedBox(
                                width: 50,
                              ),
                              buildQuickLink("Overview", Icons.document_scanner_outlined, () {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOutlinedButton(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          minimumSize: MaterialStateProperty.all<Size>(const Size(150, 50)),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildQuickLink(String text, IconData icon, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 8,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
