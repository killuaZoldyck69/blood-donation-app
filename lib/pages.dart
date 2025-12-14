import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Donation History',
          style: GoogleFonts.lato(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          _HistoryListItem(
            date: 'May 20, 2024',
            location: 'Red Cross Center',
            status: 'Completed',
          ),
          _HistoryListItem(
            date: 'February 15, 2024',
            location: 'City General Hospital',
            status: 'Completed',
          ),
        ],
      ),
    );
  }
}

class _HistoryListItem extends StatelessWidget {
  final String date;
  final String location;
  final String status;

  const _HistoryListItem({
    required this.date,
    required this.location,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(date, style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
        subtitle: Text(location, style: GoogleFonts.lato()),
        trailing: Text(status, style: GoogleFonts.lato(color: Colors.green)),
      ),
    );
  }
}

class RequestsPage extends StatelessWidget {
  const RequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Requests',
          style: GoogleFonts.lato(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: const [
          _RequestListItem(
            bloodGroup: 'A+',
            hospital: 'SF General',
            status: 'Fulfilled',
          ),
          _RequestListItem(
            bloodGroup: 'O-',
            hospital: 'Community Hospital',
            status: 'Pending',
          ),
        ],
      ),
    );
  }
}

class _RequestListItem extends StatelessWidget {
  final String bloodGroup;
  final String hospital;
  final String status;

  const _RequestListItem({
    required this.bloodGroup,
    required this.hospital,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text('Blood Group: $bloodGroup', style: GoogleFonts.lato(fontWeight: FontWeight.bold)),
        subtitle: Text(hospital, style: GoogleFonts.lato()),
        trailing: Text(status, style: GoogleFonts.lato(color: status == 'Fulfilled' ? Colors.green : Colors.orange)),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.lato(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
            ),
            const SizedBox(height: 16),
            Text(
              'Alex Hunter',
              style: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'alex.hunter@example.com',
              style: GoogleFonts.lato(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: Text('Edit Profile', style: GoogleFonts.lato()),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: Text('Settings', style: GoogleFonts.lato()),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: Text('Logout', style: GoogleFonts.lato(color: Colors.red)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
