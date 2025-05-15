import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SummaryDispatchesScreen extends StatelessWidget {
  const SummaryDispatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DispatchesProvider()..fetchDispatches(),
      child: Scaffold(
        appBar: AppBar(title: const Text('סיכום סידורים')),
        body: Column(
          children: [
            // כפתור שלא תלוי ב־Provider - לא מתרנדר כשיש שינוי ב־state
            ElevatedButton(
              onPressed: () {
                // ניגש ל־provider רק כשהכפתור נלחץ (לא בזמן build)
                context.read<DispatchesProvider>().publishNewDispatch(
                  'נסיעה חדשה',
                );
              },
              child: const Text('פרסם נסיעה'),
            ),
            // הרשימה מאזינה לשינויים בלבד
            Expanded(
              child: Consumer<DispatchesProvider>(
                builder: (context, provider, _) {
                  if (provider.dispatches.isEmpty) {
                    return const Center(child: Text('אין סידורים'));
                  }
                  return ListView.builder(
                    itemCount: provider.dispatches.length,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text(provider.dispatches[index]));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
