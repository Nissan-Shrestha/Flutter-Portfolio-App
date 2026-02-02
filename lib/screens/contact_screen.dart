import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> _open(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF2F80ED),
        title: Text(
          "Contact",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            _contactBox(
              icon: Icons.email,
              title: "Email",
              value: "nissanstha07@gmail.com",
              onTap: () => _open("mailto:nissanstha07@gmail.com"),
            ),
            _contactBox(
              icon: Icons.phone,
              title: "Phone",
              value: "+977-9805875733",
              onTap: () => _open("tel:+9779805875733"),
            ),
            _contactBox(
              icon: Icons.code,
              title: "GitHub",
              value: "github.com/Nissan-Shrestha",
              onTap: () => _open("https://github.com/Nissan-Shrestha"),
            ),
            _contactBox(
              icon: Icons.business,
              title: "LinkedIn",
              value: "linkedin.com/in/nissan-shrestha",
              onTap: () => _open(
                "https://www.linkedin.com/in/nissan-shrestha-608959353/",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _contactBox({
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: const Color(0xFFE8F0FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: const Color(0xFF2F80ED)),
            ),
            const SizedBox(width: 12),
            Column(
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
                  value,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: const Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
