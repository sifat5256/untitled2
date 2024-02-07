import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
   CustomBottomNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ensure the controller is initialized
    final controller = Get.put(CustomBottomNavBarController());

    return GetBuilder<CustomBottomNavBarController>(
      builder: (controller) => BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(Icons.history, 0, controller),
            _buildNavItem(Icons.home, 1, controller),
            _buildNavItem(Icons.arrow_back, 2, controller),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index, CustomBottomNavBarController controller) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: IconButton(
          icon: Icon(icon),
          color: controller.selectedIndex == index ? Colors.green : Colors.grey,
          onPressed: () {
            controller.setSelectedIndex(index);
          },
        ),
      ),
    );
  }
}

class CustomBottomNavBarController extends GetxController {
  final _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  void setSelectedIndex(int index) {
    _selectedIndex.value = index;
  }
}
