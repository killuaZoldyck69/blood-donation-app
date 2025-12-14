import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmergencyRequestPage extends StatefulWidget {
  const EmergencyRequestPage({super.key});

  @override
  State<EmergencyRequestPage> createState() => _EmergencyRequestPageState();
}

class _EmergencyRequestPageState extends State<EmergencyRequestPage> {
  String? _selectedBloodGroup;
  String? _selectedUrgency;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Emergency Request',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Patient Name',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'e.g., Jane Doe',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Hospital Name',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'e.g., City General Hospital',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Blood Group Needed',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  for (var bloodGroup in [
                    'A+',
                    'A-',
                    'B+',
                    'B-',
                    'AB+',
                    'AB-',
                    'O+',
                    'O-'
                  ])
                    ChoiceChip(
                      label: Text(bloodGroup),
                      selected: _selectedBloodGroup == bloodGroup,
                      onSelected: (selected) {
                        setState(() {
                          _selectedBloodGroup = selected ? bloodGroup : null;
                        });
                      },
                      selectedColor: Colors.red[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          color: _selectedBloodGroup == bloodGroup
                              ? Colors.red[700]!
                              : Colors.grey[300]!,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Urgency Level',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ChoiceChip(
                      label: SizedBox(
                        height: 60,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.warning_amber_rounded,
                                color: _selectedUrgency == 'Critical'
                                    ? Colors.red[700]
                                    : Colors.black,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Critical',
                                style: TextStyle(
                                  color: _selectedUrgency == 'Critical'
                                      ? Colors.red[700]
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      selected: _selectedUrgency == 'Critical',
                      onSelected: (selected) {
                        setState(() {
                          _selectedUrgency = selected ? 'Critical' : null;
                        });
                      },
                      selectedColor: Colors.red[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          color: _selectedUrgency == 'Critical'
                              ? Colors.red[700]!
                              : Colors.grey[300]!,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ChoiceChip(
                      label: SizedBox(
                        height: 60,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.speed_outlined,
                                color: _selectedUrgency == 'Moderate'
                                    ? Colors.red[700]
                                    : Colors.black,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Moderate',
                                style: TextStyle(
                                  color: _selectedUrgency == 'Moderate'
                                      ? Colors.red[700]
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      selected: _selectedUrgency == 'Moderate',
                      onSelected: (selected) {
                        setState(() {
                          _selectedUrgency = selected ? 'Moderate' : null;
                        });
                      },
                      selectedColor: Colors.red[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          color: _selectedUrgency == 'Moderate'
                              ? Colors.red[700]!
                              : Colors.grey[300]!,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Text(
                'Your request will be broadcasted to all nearby, available donors.',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Submit Request',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
