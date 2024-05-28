import 'package:flutter/material.dart';

class SelectorWidget extends StatefulWidget {
  @override
  _SelectorWidgetState createState() => _SelectorWidgetState();
}

class _SelectorWidgetState extends State<SelectorWidget> {
  String _selectedOption = 'Sim';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          value: 'Sim',
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
        ),
        const Text('SIM'),
        const SizedBox(width: 20),
        Radio<String>(
          value: 'NÃO',
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
        ),
        const Text('NÃO'),
      ],
    );
  }
}