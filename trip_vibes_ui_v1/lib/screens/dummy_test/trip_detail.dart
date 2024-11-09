import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TripDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Details", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://149990825.v2.pressablecdn.com/wp-content/uploads/2023/09/Paris1.jpg',
                height: screenWidth * 0.5,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            const _headerTripDetails(),

            const SizedBox( height: 15),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vitae sapien viverra laoreet fusce cras nibh.",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Icon(Icons.date_range, color: Colors.black54),
                    SizedBox(width: 8),
                    Text("15/02/2025",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 16),
                    Icon(Icons.date_range, color: Colors.black54),
                    SizedBox(width: 8),
                    Text("25/02/2025",
                        style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              "Trip Plan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TripPlanSection(
              icon: Icons.bookmark,
              title: "Bookings",
              items: [
                TagItem(name: "Hotel", color: Colors.green),
                TagItem(name: "Restaurant", color: Colors.orange),
                TagItem(name: "Car", color: Colors.pink),
              ],
            ),
            TripPlanSection(
              icon: Icons.map,
              title: "Destinations",
              items: [
                TagItem(name: "Explore", color: Colors.purple),
              ],
            ),
            TripPlanSection(
              icon: Icons.sports_soccer,
              title: "Activities",
              items: [
                TagItem(name: "Sport", color: Colors.red),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Center(
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(Icons.home, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class _headerTripDetails extends StatelessWidget {
  const _headerTripDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Milano Mountainsjjjjjjjjjjjjjkkkkkkkkkkkkkkk",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis, // Truncates overflowed text
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.redAccent, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    "Sant Paulo, Milan, Italy",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.orange.shade100,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Budget',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "\$ 450.00",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TripPlanSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<TagItem> items;

  const TripPlanSection({
    required this.icon,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.black54),
            const SizedBox(width: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[600]),
          ],
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8.0,
          children: items
              .map((item) => Chip(
                    label: Text(item.name),
                    backgroundColor: item.color.withOpacity(0.1),
                    labelStyle: TextStyle(color: item.color),
                  ))
              .toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class TagItem {
  final String name;
  final Color color;

  TagItem({required this.name, required this.color});
}


