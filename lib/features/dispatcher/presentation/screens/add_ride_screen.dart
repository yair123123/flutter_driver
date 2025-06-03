import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddRideScreen extends ConsumerStatefulWidget {
  const AddRideScreen({super.key});

  @override
  _AddRideScrean createState() => _AddRideScrean();
}

class _AddRideScrean extends ConsumerState<AddRideScreen> {
  final TextEditingController controller = TextEditingController();
  final List<String> fieldNames = [
    "מוצא",
    "יעד",
    "מחיר",
    "טלפון",
    "פרטים נוספים",
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lines = controller.text.split("\n");
    final currentIndex = (lines.length - 1).clamp(0, 4);
    final currentField = fieldNames[currentIndex];
    return Scaffold(
      appBar: AppBar(title: Text("פרסום נסיעה")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "נא להקליד כל פרט בשורה נפרדת לפי הסדר ",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 4),
            Text(
              '1. מוצא\n2. יעד\n3. מחיר\n4. טלפון\n5. פרטים נוספים',
              style: TextStyle(color: Colors.grey[700]),
            ),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "פרטי נסיעה",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 8,
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'אתה ממלא עכשיו: $currentField',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Center(
                child: Text(
                  'כאן נוסיף תבניות מוכנות בהמשך 🚀',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _publishRide,
              child: const Text('פרסם נסיעה'),
            ),
          ],
        ),
      ),
    );
  }
  void _publishRide() {
  }

}
