import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Provider Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildSectionHeader('Confirmed Jobs'),
              _buildJobTile('Job 1', 'Description for Job 1'),
              _buildJobTile('Job 2', 'Description for Job 2'),
              _buildJobTile('Job 3', 'Description for Job 3'),
              const SizedBox(height: 20),
              _buildSectionHeader('Pending Jobs'),
              _buildJobTile('Job 4', 'Description for Job 4'),
              _buildJobTile('Job 5', 'Description for Job 5'),
              const SizedBox(height: 20),
              _buildSectionHeader('Cancel Jobs'),
              _buildJobTile('Job 6', 'Description for Job 6'),
              const SizedBox(height: 20),
              _buildSectionHeader('Reviews'),
              _buildReviewTile('Review 1', 'Excellent service!'),
              _buildReviewTile('Review 2', 'Very professional.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildJobTile(String title, String description) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Handle job tile tap
        },
      ),
    );
  }

  Widget _buildReviewTile(String title, String review) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(title),
        subtitle: Text(review),
        leading: const Icon(Icons.star, color: Colors.yellow),
        onTap: () {
          // Handle review tile tap
        },
      ),
    );
  }
}


