import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/custom_app_bar.dart';
import 'package:untitled2/custom_bottom_nav_bar.dart';
import 'service_giver_home_page.dart';

class ServiceSeekerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceProviderPage()));
        },
        child: const Icon(Icons.navigate_next),
      ),
      drawer: const Drawer(),
      appBar: const CustomAppBar(
        height: 50,
        title: Text("DashBoard"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.toNamed('/service_request'),
              child: const _CustomContainer(
                color: Colors.blueAccent,
                title: 'Service Request',
                imageAsset: 'assets/service request icon.jpg',
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => Get.toNamed('/profile'),
              child: const _CustomContainer(
                color: Colors.greenAccent,
                title: 'Profile Request',
                imageAsset: 'assets/profile request icon.jpg',
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => Get.toNamed('/package_request'),
              child: const _CustomContainer(
                color: Colors.orangeAccent,
                title: 'Package Request',
                imageAsset: 'assets/packages request icon.jpg',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  final Color color;
  final String title;
  final String imageAsset;

  const _CustomContainer({
    required this.color,
    required this.title,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageAsset,
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
