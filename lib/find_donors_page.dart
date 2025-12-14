import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FindDonorsPage extends StatefulWidget {
  const FindDonorsPage({super.key});

  @override
  State<FindDonorsPage> createState() => _FindDonorsPageState();
}

class _FindDonorsPageState extends State<FindDonorsPage> {
  bool _isMapSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Find Donors',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.person_outline, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Filter by Blood Group, Distance...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isMapSelected = true;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: _isMapSelected ? Colors.red[700] : Colors.transparent,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        border: Border.all(color: Colors.red[700]!),
                      ),
                      child: Center(
                        child: Text(
                          'Map',
                          style: GoogleFonts.lato(
                            color: _isMapSelected ? Colors.white : Colors.red[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isMapSelected = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: !_isMapSelected ? Colors.red[700] : Colors.transparent,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        border: Border.all(color: Colors.red[700]!),
                      ),
                      child: Center(
                        child: Text(
                          'List',
                          style: GoogleFonts.lato(
                            color: !_isMapSelected ? Colors.white : Colors.red[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (_isMapSelected)
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.grey[300],
                child: const Center(child: Text('300x300')),
              )
            else
              Expanded(
                child: ListView(
                  children: const [
                    _DonorListItem(
                      name: 'James W.',
                      bloodGroup: 'A+',
                      distance: '2.5 km away',
                      avatarUrl: 'https://i.pravatar.cc/150?img=3',
                    ),
                    _DonorListItem(
                      name: 'Maria S.',
                      bloodGroup: 'O-',
                      distance: '3.1 km away',
                      avatarUrl: 'https://i.pravatar.cc/150?img=5',
                    ),
                    _DonorListItem(
                      name: 'Chen L.',
                      bloodGroup: 'B+',
                      distance: '5.8 km away',
                      avatarUrl: 'https://i.pravatar.cc/150?img=8',
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _DonorListItem extends StatelessWidget {
  final String name;
  final String bloodGroup;
  final String distance;
  final String avatarUrl;

  const _DonorListItem({
    required this.name,
    required this.bloodGroup,
    required this.distance,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(avatarUrl),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    distance,
                    style: GoogleFonts.lato(
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    name,
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.bloodtype, color: Colors.red[700], size: 16),
                      const SizedBox(width: 4),
                      Text(
                        bloodGroup,
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Request'),
            ),
          ],
        ),
      ),
    );
  }
}
