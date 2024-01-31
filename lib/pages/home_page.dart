import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matrimonial_ui/widgets/build_row_with_title.dart';
import 'package:matrimonial_ui/widgets/custom_textfield.dart';
import 'package:matrimonial_ui/widgets/grid_view.dart';
import 'package:matrimonial_ui/widgets/horizontal_scroll.dart';
import 'package:matrimonial_ui/widgets/image_carousel.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> imageUrls = [
    'assets/images/Weddings.png',
    'assets/images/Weddings(1).png',
    'assets/images/Weddings(2).png',
    'assets/images/Weddings(3).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sangam.com',
                      style: GoogleFonts.sofia(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text('Login',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              ImageCarousel(),
              ContainerBox(),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Why Choose Sangam?',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Genuine Profiles | Safe and Secure | Detailed Family Information',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              MyGridView(),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Over 40,000+ Happy Stories',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Center(
                      child: Text(
                        'If like thousands of couples, you too met your one-and-only on Sangam.com, we\'d love to hear all about it. It\'s our favorite part of what we do!',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MyHorizontalList(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Download the App',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Now instantly contact your Matches from your community',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/play_store.png',
                          width: 150,
                          height: 50,
                       
                        ),
                        const SizedBox(width: 16),
                        Image.asset(
                          'assets/images/apple.png', 
                          width: 150,
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Browse Matrimonial Profiles by',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    buildRowWithTitle('Mother Tongue', [
                      'Hindi',
                      'Marathi',
                      'Punjabi',
                      'Tamil',
                      'Telugu',
                      'Bengali',
                      'Gujarati',
                      'Urdu',
                      'Kannada',
                      'Odia',
                      'Malayalam',
                      'Marwari',
                      'Sindhi',
                      'English',
                      'Assamese',
                      'Bhojpuri',
                      'Konkani',
                      'Rajasthani',
                      'Garhwali',
                      'Maithili',
                      'Haryanavi',
                      'Tulu',
                    ]),
                    buildRowWithTitle('City', [
                      'Mumbai',
                      'Delhi',
                      'Bengaluru',
                      'Pune',
                      'Hyderabad',
                      'Kolkata',
                      'Chennai',
                      'Lucknow',
                      'Ahmedabad',
                      'Nagpur',
                      'Jaipur',
                      'Patna',
                      'Kanpur',
                      'Noida',
                      'Indore',
                      'Surat',
                      'Gurgaon',
                      'Ghaziabad',
                      'Ludhiana',
                      'Bhopal',
                    ]),
                    buildRowWithTitle('Community', [
                      'Sunni',
                      'Rajput',
                      'Brahmin',
                      'Maratha',
                      'Yadav',
                      'Jat',
                      'Kayastha',
                      'Agarwal',
                      'Baniya',
                      'Kshatriya',
                      'Arora',
                      'Khatri',
                      'Jatav',
                      'Kashyap',
                      'Thakur',
                      'Gupta',
                      'Scheduled Caste(SC)',
                      'Kurmi',
                      'Lingayat',
                      'Teli',
                      'Shwetamber',
                      'Vishwakarma',
                      'Kunbi',
                      'Sunni Hanafi',
                      'Vanniyar',
                      'Kushwaha',
                      'Gursikh',
                      'Reddy',
                      'Digambar',
                      'Patel',
                      'Adi Dravida',
                      'Catholic',
                    ]),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Contact Us | Terms & Conditions | Privacy Policy | Be Safe Online',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '© Sangam, Community Matchmaking Trusted By Parents TM',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Passionately created by People Group',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Version 1.0.22',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
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
}
