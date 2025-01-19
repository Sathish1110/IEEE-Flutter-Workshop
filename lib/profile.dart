import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String dob;
  final String age;
  final String address;

  const ProfilePage({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.dob,
    required this.age,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/profile2.jpg"),
            ),
            SizedBox(height: 16),
            ProfileDetailRow(label: 'Name', value: '$firstName $lastName'),
            ProfileDetailRow(label: 'Phone number', value: phoneNumber),
            ProfileDetailRow(label: 'Date of birth', value: dob),
            ProfileDetailRow(label: 'Age', value: age),
            ProfileDetailRow(label: 'Address', value: address),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  final String label;
  final String value;

  ProfileDetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
