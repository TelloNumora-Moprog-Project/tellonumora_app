import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ProfileHeader(),
          SizedBox(height: 20),
          TrustScoreSection(),
          SizedBox(height: 20),
          MyTagsSection(),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 44,
            backgroundColor: Colors.redAccent.withValues(alpha: 0.15),
            child: const Icon(
              Icons.person,
              size: 48,
              color: Colors.redAccent,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Randy Nicholas Wu',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            '+62 812-3456-7890',
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }
}

class TrustScoreSection extends StatelessWidget {
  const TrustScoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          Text(
            'Trust Score',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '92% - Trusted',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class MyTagsSection extends StatelessWidget {
  const MyTagsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tags = [
      'Randy Nicholas',
      'Mas Kurir',
      'Randy Untar',
      'Teman Kampus',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My Tags',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: tags.map((tag) {
            return Chip(
              label: Text(tag),
              backgroundColor: Colors.redAccent.withValues(alpha: 0.1),
              side: BorderSide(color: Colors.redAccent.withValues(alpha: 0.3)),
            );
          }).toList(),
        ),
      ],
    );
  }
}