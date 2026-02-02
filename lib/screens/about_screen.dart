import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),

              // ABOUT ME CARD
              Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Me",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF1F2937),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "I’m a beginner Flutter developer learning how to build clean, responsive mobile apps. "
                        "I enjoy working on UI, navigation, and small practice projects while improving my fundamentals.",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          height: 1.5,
                          color: const Color(0xFF6B7280),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // SKILLS SECTION
              Text(
                "Skills",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1F2937),
                ),
              ),
              const SizedBox(height: 10),

              Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _skillChip("Flutter"),
                      _skillChip("Dart"),
                      _skillChip("Firebase (Basics)"),
                      _skillChip("Git"),
                      _skillChip("REST API (Learning)"),
                      _skillChip("UI / Layouts"),
                      _skillChip("SQL"),
                      _skillChip("Python"),
                      _skillChip("C#"),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // EDUCATION SECTION
              Text(
                "Education",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1F2937),
                ),
              ),
              const SizedBox(height: 10),

              _educationCard(
                title: "Bachelors of Information Technology",
                subtitle: "Informatics College Pokhara",
                year: "2023 - Present",
              ),
              const SizedBox(height: 10),
              _educationCard(
                title: "High School / +2",
                subtitle: "Pokhara Secondary School",
                year: "2019 - 2021",
              ),
              const SizedBox(height: 10),
              _educationCard(
                title: "Mobile App Development Course",
                subtitle: "Swift Academy",
                year: "2025",
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _skillChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F0FF),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF2F80ED),
        ),
      ),
    );
  }

  static Widget _educationCard({
    required String title,
    required String subtitle,
    required String year,
  }) {
    return Card(
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFE8F0FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.school, color: Color(0xFF2F80ED)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1F2937),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: const Color(0xFF6B7280),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    year,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xFF6B7280),
                    ),
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
