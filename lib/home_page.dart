import 'package:flutter/material.dart';
import 'package:flutter_default_state_maager/bloc_pattern/imc_bloc_pattern.dart';
import 'package:flutter_default_state_maager/change_notifier/imc_change_notifier.dart';
import 'package:flutter_default_state_maager/setSate/imc-setstate_page.dart';
import 'package:flutter_default_state_maager/value_notifier/value_notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _giToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _giToPage(context, const ImcSetStatePage()),
              child: const Text('SetSTate'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => _giToPage(context, const ValueNotifierPage()),
              child: const Text('ValueNotifier'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () =>
                  _giToPage(context, const ImcChangeNotifierPage()),
              child: const Text('ChangeNotifier'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => _giToPage(context, const ImcBlocPattern()),
              child: const Text('Bloc Pattern (Streams)'),
            ),
          ],
        ),
      ),
    );
  }
}
