import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll>
    with SingleTickerProviderStateMixin {
  final Random _random = Random();
  int _currentDice = 1;

  void _rollDice() {
    setState(() {
      _currentDice = _random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/dice $_currentDice.png", height: 200),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _rollDice,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              textStyle: const TextStyle(fontSize: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text("🎲 Roll Dice"),
          ),
        ],
      ),
    );
  }
}
